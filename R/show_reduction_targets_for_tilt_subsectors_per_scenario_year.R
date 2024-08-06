#' Show reduction targets for all `tilt_subsectors` per scenario-year benchmark
#'
#' This function shows reduction targets for all `tilt_subsectors` per
#' scenario-year benchmark using product-level output of Sector profile indicator.
#'
#' @param sector_product A dataframe. Product-level output of Sector profile
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' library(dplyr)
#' sector_product_example <- product_sector |>
#'   select(c("tilt_subsector", "scenario", "year", "reduction_targets")) |>
#'   distinct()
#' sector_product_example
#'
#' show_reduction_targets_for_tilt_subsectors_per_scenario_year(
#'   sector_product_example
#' )
show_reduction_targets_for_tilt_subsectors_per_scenario_year <- function(sector_product) {
  sector_product |>
    select(all_of(c("tilt_subsector", "scenario", "year", "reduction_targets"))) |>
    distinct() |>
    mutate(scenario_year = paste(.data$scenario, .data$year, sep = "_")) |>
    select(-c("scenario", "year")) |>
    pivot_wider(
      names_from = "scenario_year",
      values_from = "reduction_targets"
    ) |>
    rename(
      IPR_2030 = "1.5C RPS_2030",
      IPR_2050 = "1.5C RPS_2050",
      WEO_2030 = "NZ 2050_2030",
      WEO_2050 = "NZ 2050_2050",
    )
}
