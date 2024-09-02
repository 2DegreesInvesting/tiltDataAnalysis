#' Calculate the descriptive analysis of co2_footprint per grouping_emission
#'
#' This function calculates the descriptive analysis of co2_footprint per
#' grouping_emission using product-level output of Emissions profile indicator.
#'
#' @param emission_product A dataframe. Product-level output of Emissions profile
#' @param grouping_emission A string. Benchmarks of Emissions profile
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' library(dplyr)
#' emission_product_example <- example_emission_product_co2_des_analysis()
#' emission_product_example
#'
#' # Calculates the descriptive analysis for grouping_emission "tilt_subsector"
#' calculate_co2_descriptive_analysis_per_benchmark(
#'   emission_product_example,
#'   "tilt_subsector"
#' )
calculate_co2_descriptive_analysis_per_benchmark <- function(emission_product, grouping_emission) {
  if (grouping_emission == "all") {
    select_benchmarks <- c("grouping_emission", "co2_footprint", "activity_uuid_product_uuid")
    group_benchmark <- NULL
  } else if (grouping_emission == "unit_isic_4digit") {
    select_benchmarks <- c("unit", "isic_4digit", "grouping_emission", "co2_footprint", "activity_uuid_product_uuid")
    group_benchmark <- c("unit", "isic_4digit")
  } else if (grouping_emission == "unit_tilt_subsector") {
    select_benchmarks <- c("tilt_sector", "unit", "tilt_subsector", "grouping_emission", "co2_footprint", "activity_uuid_product_uuid")
    group_benchmark <- c("unit", "tilt_subsector")
  } else {
    select_benchmarks <- c("tilt_sector", grouping_emission, "grouping_emission", "co2_footprint", "activity_uuid_product_uuid")
    group_benchmark <- grouping_emission
  }

  output <- emission_product |>
    select(all_of(select_benchmarks)) |>
    distinct() |>
    filter(grouping_emission == grouping_emission) |>
    select(-c("grouping_emission")) |>
    mutate("# of distinct products" = n_distinct(.data$activity_uuid_product_uuid, na.rm = TRUE), .by = group_benchmark) |>
    mutate("min CO2e" = min(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate("max CO2e" = max(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate("mean CO2e" = mean(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    mutate("median CO2e" = median(.data$co2_footprint, na.rm = TRUE), .by = group_benchmark) |>
    select(-all_of(c("activity_uuid_product_uuid", "co2_footprint"))) |>
    distinct()

  output[order(output[[1]], output[[2]]), ]
}
