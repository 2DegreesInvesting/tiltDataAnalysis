#' Calculate the descriptive analysis of transition risk scores for all
#' `tilt_subsectors` per scenario-year benchmark
#'
#' This function calculates the descriptive analysis of transition risk scores
#' for all `tilt_subsectors` per scenario-year benchmark using product-level
#' output of Transition risk profile indicator.
#'
#' @param transition_risk_product A dataframe. Product-level output of
#' Transition risk profile
#' @param scenario_year_benchmark A string. Benchmarks of Sector profile
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' library(dplyr)
#' transition_risk_product_example <- product_transition_risk |>
#'   select(c("tilt_subsector", "scenario", "year", "transition_risk_score")) |>
#'   distinct()
#' transition_risk_product_example
#'
#' # Calculates the descriptive analysis for benchmark "1.5C RPS_2030"
#' calculate_trs_descriptive_analysis_per_scenario_year(
#'   transition_risk_product_example,
#'   "1.5C RPS_2030"
#' )
calculate_trs_descriptive_analysis_per_scenario_year <- function(transition_risk_product, scenario_year_benchmark) {
  transition_risk_product |>
    select(c("tilt_subsector", "scenario", "year", "transition_risk_score")) |>
    distinct() |>
    mutate(scenario_year = paste(.data$scenario, .data$year, sep = "_")) |>
    select(-c("scenario", "year")) |>
    filter(.data$scenario_year == scenario_year_benchmark) |>
    mutate(tr_average = mean(.data$transition_risk_score, na.rm = TRUE), .by = "tilt_subsector") |>
    mutate(tr_median = median(.data$transition_risk_score, na.rm = TRUE), .by = "tilt_subsector") |>
    mutate(tr_25th = quantile(.data$transition_risk_score, 0.25, na.rm = TRUE), .by = "tilt_subsector") |>
    mutate(tr_75th = quantile(.data$transition_risk_score, 0.75, na.rm = TRUE), .by = "tilt_subsector") |>
    select(-c("transition_risk_score")) |>
    distinct()
}
