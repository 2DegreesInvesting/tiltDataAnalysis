#' Example raw datasets
#'
#' These datasets shows a state of the data prior to becoming an input for this
#' package.
#'
#' @return A dataframe.
#' @export
#' @keywords internal
#'
#' @examples
#' example_emission_product_co2_des_analysis()
#' example_transition_risk_product_trs_des_analysis()
example_emission_product_co2_des_analysis <- function() {
  tribble(
  # styler: off
          ~benchmark, ~tilt_subsector, ~unit, ~isic_4digit, ~co2_footprint,   ~ep_product,
    "tilt_subsector",     "chemicals",  "kg",     "'5555'",              1,       "water",
    "tilt_subsector",     "chemicals",  "kg",     "'5555'",              4,  "television",
    "tilt_subsector",     "chemicals",  "kg",     "'5555'",              9,      "tables",
    "tilt_subsector",     "chemicals",  "kg",     "'5555'",              8, "electricity",
    "tilt_subsector",     "chemicals",  "kg",     "'5555'",       NA_real_,        "meat",
    "tilt_subsector",  "iron & steel",  "m3",     "'6666'",              1,      "tables",
    "tilt_subsector",  "iron & steel",  "m3",     "'6666'",              2,       "water",
    "tilt_subsector",  "iron & steel",  "m3",     "'6666'",              4,        "tent"
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_product_trs_des_analysis <- function() {
  tribble(
    # styler: off
    ~tilt_subsector,       ~grouping_transition_risk, ~transition_risk_score,
        "chemicals",  "1.5C RPS_2030_tilt_subsector",                      1,
        "chemicals",  "1.5C RPS_2030_tilt_subsector",                      2,
        "chemicals",  "1.5C RPS_2050_tilt_subsector",                      3,
        "chemicals",  "1.5C RPS_2050_tilt_subsector",                      4,
        "chemicals",   "NZ 2050_2030_tilt_subsector",                      5,
        "chemicals",   "NZ 2050_2030_tilt_subsector",                      6,
        "chemicals",   "NZ 2050_2050_tilt_subsector",                      7,
        "chemicals",   "NZ 2050_2050_tilt_subsector",                      8,
     "iron & steel",  "1.5C RPS_2030_tilt_subsector",                      9,
     "iron & steel",  "1.5C RPS_2030_tilt_subsector",                     10,
     "iron & steel",  "1.5C RPS_2050_tilt_subsector",                     11,
     "iron & steel",  "1.5C RPS_2050_tilt_subsector",                     12,
     "iron & steel",   "NZ 2050_2030_tilt_subsector",                     13,
     "iron & steel",   "NZ 2050_2030_tilt_subsector",                     14,
     "iron & steel",   "NZ 2050_2050_tilt_subsector",                     15,
     "iron & steel",   "NZ 2050_2050_tilt_subsector",               NA_real_
    # styler: on
  )
}
