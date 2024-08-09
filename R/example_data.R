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
#' example_emission_ep_product_des_analysis()
#' example_sector_ep_product_des_analysis()
#' example_transition_risk_product_emission_cov()
#' example_transition_risk_product_sector_cov()
#' example_transition_risk_product_transition_risk_cov()
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

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_emission_ep_product_des_analysis <- function() {
  tribble(
    # styler: off
  ~companies_id, ~ep_product, ~emission_profile,
       "comp_1",         "a",            "high",
       "comp_1",         "b",            "high",
       "comp_1",         "c",            "high",
       "comp_1",         "d",     NA_character_,
       "comp_1",         "e",     NA_character_,
       "comp_2",         "a",            "high",
       "comp_2",         "b",            "high",
       "comp_2",         "c",            "high"
  # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_sector_ep_product_des_analysis <- function() {
  tribble(
    # styler: off
    ~companies_id, ~ep_product, ~sector_profile,
         "comp_1",         "a",          "high",
         "comp_1",         "b",          "high",
         "comp_1",         "c",          "high",
         "comp_1",         "d",   NA_character_,
         "comp_1",         "e",   NA_character_,
         "comp_2",         "a",          "high",
         "comp_2",         "b",          "high",
         "comp_2",         "c",          "high"
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_product_emission_cov <- function() {
  tribble(
    # styler: off
    ~companies_id,    ~grouping_emission, ~cov_emission_rank,
         "comp_1",                 "all",               10.0,
         "comp_1",         "isic_4digit",               15.0,
         "comp_1",      "tilt_subsector",               20.0,
         "comp_1",                "unit",               25.0,
         "comp_1",    "unit_isic_4digit",               30.0,
         "comp_1", "unit_tilt_subsector",               35.0,
         "comp_2",                 "all",               45.0,
         "comp_2",         "isic_4digit",               50.0,
         "comp_2",      "tilt_subsector",               55.0,
         "comp_2",                "unit",               60.0,
         "comp_2",    "unit_isic_4digit",               65.0,
         "comp_2", "unit_tilt_subsector",               70.0
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_product_sector_cov <- function() {
  tribble(
    # styler: off
    ~companies_id,  ~scenario, ~year, ~cov_sector_target,
         "comp_1", "1.5C RPS",  2030,               10.0,
         "comp_1", "1.5C RPS",  2050,               15.0,
         "comp_1",  "NZ 2050",  2030,               20.0,
         "comp_1",  "NZ 2050",  2050,               25.0,
         "comp_2", "1.5C RPS",  2030,               45.0,
         "comp_2", "1.5C RPS",  2050,               50.0,
         "comp_2",  "NZ 2050",  2030,               55.0,
         "comp_2",  "NZ 2050",  2050,               60.0
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_product_transition_risk_cov <- function() {
  tribble(
    # styler: off
    ~companies_id,      ~grouping_transition_risk, ~cov_transition_risk,
         "comp_1", "1.5C RPS_2030_tilt_subsector",                 10.0,
         "comp_1", "1.5C RPS_2050_tilt_subsector",                 15.0,
         "comp_1",  "NZ 2050_2030_tilt_subsector",                 20.0,
         "comp_1",  "NZ 2050_2050_tilt_subsector",                 25.0,
         "comp_2", "1.5C RPS_2030_tilt_subsector",                 45.0,
         "comp_2", "1.5C RPS_2050_tilt_subsector",                 50.0,
         "comp_2",  "NZ 2050_2030_tilt_subsector",                 55.0,
         "comp_2",  "NZ 2050_2050_tilt_subsector",                 60.0
    # styler: on
  )
}
