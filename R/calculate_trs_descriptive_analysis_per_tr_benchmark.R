#' Calculate the descriptive analysis of transition risk scores for all
#' `tilt_subsectors` per scenario-year-tilt_subsector benchmark
#'
#' This function calculates the descriptive analysis of transition risk scores
#' for all `tilt_subsectors` per scenario-year-tilt_subsector benchmark using
#' product-level output of Transition risk profile indicator.
#'
#' @param transition_risk_product A dataframe. Product-level output of
#' Transition risk profile
#' @param transition_risk_benchmark A string. Benchmark of Transition risk
#' profile
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' transition_risk_product_example <-
#'   example_transition_risk_product_trs_des_analysis()
#' transition_risk_product_example
#'
#' # Calculates the descriptive analysis for benchmark "1.5C RPS_2030_tilt_subsector"
#' calculate_trs_descriptive_analysis_per_tr_benchmark(
#'   transition_risk_product_example,
#'   "1.5C RPS_2030_tilt_subsector"
#' )
calculate_trs_descriptive_analysis_per_tr_benchmark <- function(transition_risk_product, transition_risk_benchmark) {
  transition_risk_product |>
    select(c("tilt_subsector", "grouping_transition_risk", "transition_risk_score")) |>
    distinct() |>
    filter(.data$grouping_transition_risk == transition_risk_benchmark) |>
    mutate(tr_average = mean(.data$transition_risk_score, na.rm = TRUE), .by = "tilt_subsector") |>
    mutate(tr_median = median(.data$transition_risk_score, na.rm = TRUE), .by = "tilt_subsector") |>
    mutate(tr_25th = quantile(.data$transition_risk_score, 0.25, na.rm = TRUE), .by = "tilt_subsector") |>
    mutate(tr_75th = quantile(.data$transition_risk_score, 0.75, na.rm = TRUE), .by = "tilt_subsector") |>
    select(-c("transition_risk_score")) |>
    distinct()
}
