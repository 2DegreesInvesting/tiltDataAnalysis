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
#' # styler: off
#' emission_product_example <- tribble(
#'           ~benchmark, ~tilt_subsector, ~co2_footprint,   ~ep_product,
#'     "tilt_subsector",     "chemicals",              1,       "water",
#'     "tilt_subsector",     "chemicals",              4,  "television",
#'     "tilt_subsector",     "chemicals",              9,      "tables",
#'     "tilt_subsector",     "chemicals",              8, "electricity",
#'     "tilt_subsector",     "chemicals",       NA_real_,        "meat",
#'     "tilt_subsector",  "iron & steel",              1,      "tables",
#'     "tilt_subsector",  "iron & steel",              2,       "water",
#'     "tilt_subsector",  "iron & steel",              4,        "tent"
#'   )
#' # styler: on
#'
#' emission_product_example
#'
#' # Calculates the descriptive analysis for benchmark "tilt_subsector"
#' calculate_co2_footprint_descriptive_analysis_per_benchmark(
#'   emission_product_example,
#'   "tilt_subsector"
#' )
calculate_co2_footprint_descriptive_analysis_per_benchmark <- function(emission_product, benchmark) {
  if (benchmark == "all") {
    select_benchmarks <- c("benchmark", "co2_footprint", "ep_product")
    group_benchmark <- NULL
  } else if (benchmark == "unit_isic_4digit") {
    select_benchmarks <- c("unit", "isic_4digit", "benchmark", "co2_footprint", "ep_product")
    group_benchmark <- c("unit", "isic_4digit")
  } else if (benchmark == "unit_tilt_subsector") {
    select_benchmarks <- c("unit", "tilt_subsector", "benchmark", "co2_footprint", "ep_product")
    group_benchmark <- c("unit", "tilt_subsector")
  } else {
    select_benchmarks <- c(benchmark, "benchmark", "co2_footprint", "ep_product")
    group_benchmark <- benchmark
  }

  output <- emission_product |>
    select(all_of(select_benchmarks)) |>
    distinct() |>
    filter(benchmark == benchmark) |>
    select(-c("benchmark")) |>
    mutate(co2_min = min(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate(co2_max = max(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate(amount_of_unique_products = n_distinct(.data$ep_product, na.rm = TRUE), .by = group_benchmark) |>
    mutate(co2_median = median(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate(co2_average = mean(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate(co2_sd = sd(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate(co2_cov = ((.data$co2_sd / .data$co2_average) * 100)) |>
    select(-all_of(c("ep_product", "co2_footprint"))) |>
    distinct()

  output[order(output[[1]]), ]
}
