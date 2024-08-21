#' Calculate the descriptive analysis of co2_footprint per benchmark
#'
#' This function calculates the descriptive analysis of co2_footprint per
#' benchmark using product-level output of Emissions profile indicator.
#'
#' @param emission_product A dataframe. Product-level output of Emissions profile
#' @param benchmark A string. Benchmarks of Emissions profile
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' library(dplyr)
#' emission_product_example <- example_emission_product_co2_des_analysis()
#' emission_product_example
#'
#' # Calculates the descriptive analysis for benchmark "tilt_subsector"
#' calculate_co2_descriptive_analysis_per_benchmark(
#'   emission_product_example,
#'   "tilt_subsector"
#' )
calculate_co2_descriptive_analysis_per_benchmark <- function(emission_product, benchmark) {
  if (benchmark == "all") {
    select_benchmarks <- c("benchmark", "co2_footprint", "ep_product")
    group_benchmark <- NULL
  } else if (benchmark == "unit_isic_4digit") {
    select_benchmarks <- c("unit", "isic_4digit", "benchmark", "co2_footprint", "ep_product")
    group_benchmark <- c("unit", "isic_4digit")
  } else if (benchmark == "unit_tilt_subsector") {
    select_benchmarks <- c("tilt_sector", "unit", "tilt_subsector", "benchmark", "co2_footprint", "ep_product")
    group_benchmark <- c("unit", "tilt_subsector")
  } else {
    select_benchmarks <- c("tilt_sector", benchmark, "benchmark", "co2_footprint", "ep_product")
    group_benchmark <- benchmark
  }

  output <- emission_product |>
    select(all_of(select_benchmarks)) |>
    distinct() |>
    filter(benchmark == benchmark) |>
    select(-c("benchmark")) |>
    mutate("# of distinct products" = n_distinct(.data$ep_product, na.rm = TRUE), .by = group_benchmark) |>
    mutate("min CO2e" = min(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate("max CO2e" = max(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate("mean CO2e" = mean(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate("median CO2e" = median(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    select(-all_of(c("ep_product", "co2_footprint"))) |>
    distinct()

  output[order(output[[1]], output[[2]]), ]
}
