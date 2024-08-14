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
#' example_emission_product_best_case_worst_case()
#' example_transition_risk_company_emission_avg_best_case_worst_case()
#' example_transition_risk_company_sector_avg_best_case_worst_case()
#' example_transition_risk_product_best_case_worst_case()
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

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_emission_product_best_case_worst_case <- function() {
  tribble(
    # styler: off
   ~benchmark,  ~country, ~emission_profile, ~emissions_profile_equal_weight, ~emissions_profile_best_case, ~emissions_profile_worst_case,
        "all",  "france",            "high",                            0.25,                         0.25,                         0.25,
        "all",  "france",            "high",                            0.75,                         0.75,                         0.75,
        "all",  "france",          "medium",                            0.10,                         0.10,                         0.10,
        "all",  "france",             "low",                            0.15,                         0.15,                         0.15,
        "all",  "france",             "low",                            0.55,                         0.55,                         0.55,
        "all",  "france",     NA_character_,                            0.30,                         0.30,                         0.30,
       "unit",  "france",            "high",                            0.45,                         0.45,                         0.45,
       "unit",  "france",          "medium",                            0.60,                         0.60,                         0.60,
       "unit",  "france",          "medium",                            0.40,                         0.40,                         0.40,
       "unit",  "france",             "low",                            0.35,                         0.35,                         0.35,
       "unit",  "france",             "low",                            0.75,                         0.75,                         0.75,
       "unit", "austria",            "high",                            0.35,                         0.35,                         0.35,
        "all", "austria",            "high",                            0.25,                         0.25,                         0.25,
        "all", "austria",          "medium",                            0.10,                         0.10,                         0.10,
        "all", "austria",          "medium",                            0.60,                         0.60,                         0.60,
        "all", "austria",             "low",                            0.15,                         0.15,                         0.15,
        "all", "austria",     NA_character_,                            0.30,                         0.30,                         0.30,
       "unit", "austria",            "high",                            0.45,                         0.45,                         0.45,
       "unit", "austria",          "medium",                            0.60,                         0.60,                         0.60,
       "unit", "austria",          "medium",                            0.80,                         0.80,                         0.80,
       "unit", "austria",             "low",                            0.35,                         0.35,                         0.35,
       "unit", "austria",             "low",                            0.85,                         0.85,                         0.85,
       "unit", "austria",     NA_character_,                            0.75,                         0.75,                         0.75

    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_company_emission_avg_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~companies_id,  ~country, ~grouping_emission, ~emission_rank_avg_equal_weight, ~emission_rank_avg_best_case,  ~emission_rank_avg_worst_case,
         "comp_1",  "france",              "all",                            0.25,                         0.25,                           0.25,
         "comp_1",  "france",      "isic_4digit",                            0.85,                         0.85,                           0.85,
         "comp_2",  "france",              "all",                            0.10,                         0.10,                           0.10,
         "comp_2",  "france",      "isic_4digit",                            0.30,                         0.30,                           0.30,
         "comp_3", "austria",              "all",                            0.35,                         0.35,                           0.35,
         "comp_3", "austria",      "isic_4digit",                            0.55,                         0.55,                           0.55,
         "comp_4", "austria",              "all",                            0.70,                         0.70,                           0.70,
         "comp_4", "austria",      "isic_4digit",                            0.20,                         0.20,                           0.20
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_company_sector_avg_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~companies_id,  ~country,  ~scenario, ~year, ~sector_target_avg_equal_weight, ~sector_target_avg_best_case,  ~sector_target_avg_worst_case,
         "comp_1",  "france", "1.5C RPS",  2030,                            0.25,                         0.25,                           0.25,
         "comp_1",  "france",  "NZ 2050",  2030,                            0.85,                         0.85,                           0.85,
         "comp_2",  "france", "1.5C RPS",  2030,                            0.10,                         0.10,                           0.10,
         "comp_2",  "france",  "NZ 2050",  2030,                            0.30,                         0.30,                           0.30,
         "comp_3", "austria", "1.5C RPS",  2030,                            0.35,                         0.35,                           0.35,
         "comp_3", "austria",  "NZ 2050",  2030,                            0.55,                         0.55,                           0.55,
         "comp_4", "austria", "1.5C RPS",  2030,                            0.70,                         0.70,                           0.70,
         "comp_4", "austria",  "NZ 2050",  2030,                            0.20,                         0.20,                           0.20
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_product_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~grouping_transition_risk,  ~country, ~transition_risk_category, ~transition_risk_profile_equal_weight, ~transition_risk_profile_best_case, ~transition_risk_profile_worst_case,
          "1.5C RPS_2030_all",  "france",                    "high",                                  0.25,                               0.25,                                0.25,
          "1.5C RPS_2030_all",  "france",                    "high",                                  0.75,                               0.75,                                0.75,
          "1.5C RPS_2030_all",  "france",                  "medium",                                  0.10,                               0.10,                                0.10,
          "1.5C RPS_2030_all",  "france",                     "low",                                  0.15,                               0.15,                                0.15,
          "1.5C RPS_2030_all",  "france",                     "low",                                  0.55,                               0.55,                                0.55,
          "1.5C RPS_2030_all",  "france",             NA_character_,                                  0.30,                               0.30,                                0.30,
          "NZ 2050_2030_unit",  "france",                    "high",                                  0.45,                               0.45,                                0.45,
          "NZ 2050_2030_unit",  "france",                  "medium",                                  0.60,                               0.60,                                0.60,
          "NZ 2050_2030_unit",  "france",                  "medium",                                  0.40,                               0.40,                                0.40,
          "NZ 2050_2030_unit",  "france",                     "low",                                  0.35,                               0.35,                                0.35,
          "NZ 2050_2030_unit",  "france",                     "low",                                  0.75,                               0.75,                                0.75,
          "NZ 2050_2030_unit", "austria",                    "high",                                  0.35,                               0.35,                                0.35,
          "1.5C RPS_2030_all", "austria",                    "high",                                  0.25,                               0.25,                                0.25,
          "1.5C RPS_2030_all", "austria",                  "medium",                                  0.10,                               0.10,                                0.10,
          "1.5C RPS_2030_all", "austria",                  "medium",                                  0.60,                               0.60,                                0.60,
          "1.5C RPS_2030_all", "austria",                     "low",                                  0.15,                               0.15,                                0.15,
          "1.5C RPS_2030_all", "austria",             NA_character_,                                  0.30,                               0.30,                                0.30,
          "NZ 2050_2030_unit", "austria",                    "high",                                  0.45,                               0.45,                                0.45,
          "NZ 2050_2030_unit", "austria",                  "medium",                                  0.60,                               0.60,                                0.60,
          "NZ 2050_2030_unit", "austria",                  "medium",                                  0.80,                               0.80,                                0.80,
          "NZ 2050_2030_unit", "austria",                     "low",                                  0.35,                               0.35,                                0.35,
          "NZ 2050_2030_unit", "austria",                     "low",                                  0.85,                               0.85,                                0.85,
          "NZ 2050_2030_unit", "austria",             NA_character_,                                  0.75,                               0.75,                                0.75
    # styler: on
  )
}
