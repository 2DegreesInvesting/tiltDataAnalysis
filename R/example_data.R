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
#' example_transition_risk_product_emission_cov()
#' example_transition_risk_product_sector_cov()
#' example_transition_risk_product_transition_risk_cov()
#' example_emission_product_best_case_worst_case()
#' example_transition_risk_company_emission_avg_best_case_worst_case()
#' example_transition_risk_company_sector_avg_best_case_worst_case()
#' example_transition_risk_product_best_case_worst_case()
#' example_transition_risk_company_transition_risk_avg_best_case_worst_case()
#' example_transition_risk_emission_ep_product_des_analysis()
#' example_transition_risk_sector_ep_product_des_analysis()
#' example_transition_risk_ep_product_des_analysis()
example_emission_product_co2_des_analysis <- function() {
  tribble(
  # styler: off
          ~benchmark, ~tilt_sector, ~tilt_subsector, ~unit, ~isic_4digit, ~co2_footprint,   ~ep_product,
    "tilt_subsector",      "group",     "chemicals",  "kg",     "'5555'",              1,       "water",
    "tilt_subsector",      "group",     "chemicals",  "kg",     "'5555'",              4,  "television",
    "tilt_subsector",      "group",     "chemicals",  "kg",     "'5555'",              9,      "tables",
    "tilt_subsector",      "group",     "chemicals",  "kg",     "'5555'",              8, "electricity",
    "tilt_subsector",      "group",     "chemicals",  "kg",     "'5555'",       NA_real_,        "meat",
    "tilt_subsector",      "group",  "iron & steel",  "m3",     "'6666'",              1,      "tables",
    "tilt_subsector",      "group",  "iron & steel",  "m3",     "'6666'",              2,       "water",
    "tilt_subsector",      "group",  "iron & steel",  "m3",     "'6666'",              4,        "tent"
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
example_transition_risk_emission_ep_product_des_analysis <- function() {
  tribble(
    # styler: off
    ~companies_id, ~product, ~grouping_emission, ~emission_category,
         "comp_1",      "a",              "all",             "high",
         "comp_1",      "b",              "all",             "high",
         "comp_1",      "c",              "all",             "high",
         "comp_1",      "d",      NA_character_,      NA_character_,
         "comp_1",      "e",      NA_character_,      NA_character_,
         "comp_2",      "a",              "all",             "high",
         "comp_2",      "b",              "all",             "high",
         "comp_2",      "c",              "all",             "high",
         "comp_3",      "d",      NA_character_,      NA_character_,
         "comp_3",      "e",      NA_character_,      NA_character_
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_sector_ep_product_des_analysis <- function() {
  tribble(
    # styler: off
    ~companies_id, ~product, ~sector_target, ~sector_category,
         "comp_1",      "a",           0.12,           "high",
         "comp_1",      "b",           0.96,           "high",
         "comp_1",      "c",           0.64,           "high",
         "comp_1",      "d",       NA_real_,    NA_character_,
         "comp_1",      "e",       NA_real_,    NA_character_,
         "comp_2",      "a",           0.12,           "high",
         "comp_2",      "b",           0.96,           "high",
         "comp_2",      "c",           0.64,           "high",
         "comp_3",      "d",       NA_real_,    NA_character_,
         "comp_3",      "e",       NA_real_,    NA_character_
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_ep_product_des_analysis <- function() {
  tribble(
    # styler: off
    ~companies_id, ~product, ~grouping_transition_risk, ~transition_risk_category,
         "comp_1",      "a",       "1.5C RPS_2030_all",                    "high",
         "comp_1",      "b",       "1.5C RPS_2030_all",                    "high",
         "comp_1",      "c",       "1.5C RPS_2030_all",                    "high",
         "comp_1",      "d",             NA_character_,             NA_character_,
         "comp_1",      "e",             NA_character_,             NA_character_,
         "comp_2",      "a",       "1.5C RPS_2030_all",                    "high",
         "comp_2",      "b",       "1.5C RPS_2030_all",                    "high",
         "comp_2",      "c",       "1.5C RPS_2030_all",                    "high",
         "comp_3",      "d",             NA_character_,             NA_character_,
         "comp_3",      "e",             NA_character_,             NA_character_
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
    ~companies_id, ~grouping_emission,      ~country, ~emission_category, ~emissions_profile_equal_weight, ~emissions_profile_best_case, ~emissions_profile_worst_case,
         "comp_1",              "all",      "france",             "high",                            0.25,                         0.25,                          0.25,
         "comp_2",              "all",      "france",             "high",                            0.25,                         0.25,                          0.25,
         "comp_1",              "all",      "france",             "high",                            0.75,                         0.75,                          0.75,
         "comp_1",              "all",      "france",           "medium",                            0.10,                         0.10,                          0.10,
         "comp_1",              "all",      "france",              "low",                            0.15,                         0.15,                          0.15,
         "comp_1",              "all",      "france",              "low",                            0.55,                         0.55,                          0.55,
         "comp_1",              "all",      "france",      NA_character_,                            0.30,                         0.30,                          0.30,
         "comp_1",   "tilt_subsector",      "france",             "high",                            0.45,                         0.45,                          0.45,
         "comp_1",   "tilt_subsector",      "france",           "medium",                            0.60,                         0.60,                          0.60,
         "comp_1",   "tilt_subsector",      "france",           "medium",                            0.40,                         0.40,                          0.40,
         "comp_1",   "tilt_subsector",      "france",              "low",                            0.35,                         0.35,                          0.35,
         "comp_1",   "tilt_subsector",      "france",              "low",                            0.75,                         0.75,                          0.75,
         "comp_1",   "tilt_subsector",     "austria",             "high",                            0.35,                         0.35,                          0.35,
         "comp_1",              "all",     "austria",             "high",                            0.25,                         0.25,                          0.25,
         "comp_1",              "all",     "austria",           "medium",                            0.10,                         0.10,                          0.10,
         "comp_1",              "all",     "austria",           "medium",                            0.60,                         0.60,                          0.60,
         "comp_1",              "all",     "austria",              "low",                            0.15,                         0.15,                          0.15,
         "comp_1",              "all",     "austria",      NA_character_,                            0.30,                         0.30,                          0.30,
         "comp_1",   "tilt_subsector",     "austria",             "high",                            0.45,                         0.45,                          0.45,
         "comp_1",   "tilt_subsector",     "austria",           "medium",                            0.60,                         0.60,                          0.60,
         "comp_1",   "tilt_subsector",     "austria",           "medium",                            0.80,                         0.80,                          0.80,
         "comp_1",   "tilt_subsector",     "austria",              "low",                            0.35,                         0.35,                          0.35,
         "comp_1",   "tilt_subsector",     "austria",              "low",                            0.85,                         0.85,                          0.85,
         "comp_1",   "tilt_subsector",     "austria",      NA_character_,                            0.75,                         0.75,                          0.75,
         "comp_1",   "tilt_subsector",     "germany",             "high",                            0.45,                         0.45,                          0.45,
         "comp_1",   "tilt_subsector",     "germany",           "medium",                            0.60,                         0.60,                          0.60,
         "comp_1",   "tilt_subsector", "netherlands",             "high",                            0.45,                         0.45,                          0.45,
         "comp_1",   "tilt_subsector", "netherlands",           "medium",                            0.60,                         0.60,                          0.60,
         "comp_1",   "tilt_subsector",       "spain",             "high",                            0.45,                         0.45,                          0.45,
         "comp_1",   "tilt_subsector",       "spain",           "medium",                            0.60,                         0.60,                          0.60
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_company_emission_avg_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~companies_id,      ~country, ~grouping_emission, ~emission_rank_avg_equal_weight, ~emission_rank_avg_best_case,  ~emission_rank_avg_worst_case,
         "comp_1",      "france",              "all",                            0.25,                         0.25,                           0.25,
         "comp_1",      "france",   "tilt_subsector",                            0.85,                         0.85,                           0.85,
         "comp_2",      "france",              "all",                            0.10,                         0.10,                           0.10,
         "comp_2",      "france",   "tilt_subsector",                            0.30,                         0.30,                           0.30,
         "comp_3",     "austria",              "all",                            0.35,                         0.35,                           0.35,
         "comp_3",     "austria",   "tilt_subsector",                            0.55,                         0.55,                           0.55,
         "comp_4",     "austria",              "all",                            0.70,                         0.70,                           0.70,
         "comp_4",     "austria",   "tilt_subsector",                            0.20,                         0.20,                           0.20,
         "comp_5",     "germany",              "all",                            0.70,                         0.70,                           0.70,
         "comp_5",     "germany",   "tilt_subsector",                            0.20,                         0.20,                           0.20,
         "comp_6", "netherlands",              "all",                            0.70,                         0.70,                           0.70,
         "comp_6", "netherlands",   "tilt_subsector",                            0.20,                         0.20,                           0.20,
         "comp_7",       "spain",              "all",                            0.70,                         0.70,                           0.70,
         "comp_7",       "spain",   "tilt_subsector",                            0.20,                         0.20,                           0.20
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_company_sector_avg_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~companies_id,      ~country,  ~scenario, ~year, ~sector_target_avg_equal_weight, ~sector_target_avg_best_case,  ~sector_target_avg_worst_case,
         "comp_1",      "france", "1.5C RPS",  2030,                            0.25,                         0.25,                           0.25,
         "comp_1",      "france",  "NZ 2050",  2030,                            0.85,                         0.85,                           0.85,
         "comp_2",      "france", "1.5C RPS",  2030,                            0.10,                         0.10,                           0.10,
         "comp_2",      "france",  "NZ 2050",  2030,                            0.30,                         0.30,                           0.30,
         "comp_3",     "austria", "1.5C RPS",  2030,                            0.35,                         0.35,                           0.35,
         "comp_3",     "austria",  "NZ 2050",  2030,                            0.55,                         0.55,                           0.55,
         "comp_4",     "austria", "1.5C RPS",  2030,                            0.70,                         0.70,                           0.70,
         "comp_4",     "austria",  "NZ 2050",  2030,                            0.20,                         0.20,                           0.20,
         "comp_5",     "germany", "1.5C RPS",  2030,                            0.70,                         0.70,                           0.70,
         "comp_5",     "germany",  "NZ 2050",  2030,                            0.20,                         0.20,                           0.20,
         "comp_6", "netherlands", "1.5C RPS",  2030,                            0.70,                         0.70,                           0.70,
         "comp_6", "netherlands",  "NZ 2050",  2030,                            0.20,                         0.20,                           0.20,
         "comp_7",       "spain", "1.5C RPS",  2030,                            0.70,                         0.70,                           0.70,
         "comp_7",       "spain",  "NZ 2050",  2030,                            0.20,                         0.20,                           0.20
     # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_product_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~companies_id, ~grouping_transition_risk,      ~country, ~transition_risk_category, ~transition_risk_profile_equal_weight, ~transition_risk_profile_best_case, ~transition_risk_profile_worst_case,
         "comp_1",       "1.5C RPS_2030_all",      "france",                    "high",                                  0.25,                               0.25,                                0.25,
         "comp_2",       "1.5C RPS_2030_all",      "france",                    "high",                                  0.25,                               0.25,                                0.25,
         "comp_1",       "1.5C RPS_2030_all",      "france",                    "high",                                  0.75,                               0.75,                                0.75,
         "comp_1",       "1.5C RPS_2030_all",      "france",                  "medium",                                  0.10,                               0.10,                                0.10,
         "comp_1",       "1.5C RPS_2030_all",      "france",                     "low",                                  0.15,                               0.15,                                0.15,
         "comp_1",       "1.5C RPS_2030_all",      "france",                     "low",                                  0.55,                               0.55,                                0.55,
         "comp_1",       "1.5C RPS_2030_all",      "france",             NA_character_,                                  0.30,                               0.30,                                0.30,
         "comp_1",        "NZ 2050_2030_all",      "france",                    "high",                                  0.45,                               0.45,                                0.45,
         "comp_1",        "NZ 2050_2030_all",      "france",                  "medium",                                  0.60,                               0.60,                                0.60,
         "comp_1",        "NZ 2050_2030_all",      "france",                  "medium",                                  0.40,                               0.40,                                0.40,
         "comp_1",        "NZ 2050_2030_all",      "france",                     "low",                                  0.35,                               0.35,                                0.35,
         "comp_1",        "NZ 2050_2030_all",      "france",                     "low",                                  0.75,                               0.75,                                0.75,
         "comp_1",        "NZ 2050_2030_all",     "austria",                    "high",                                  0.35,                               0.35,                                0.35,
         "comp_1",       "1.5C RPS_2030_all",     "austria",                    "high",                                  0.25,                               0.25,                                0.25,
         "comp_1",       "1.5C RPS_2030_all",     "austria",                  "medium",                                  0.10,                               0.10,                                0.10,
         "comp_1",       "1.5C RPS_2030_all",     "austria",                  "medium",                                  0.60,                               0.60,                                0.60,
         "comp_1",       "1.5C RPS_2030_all",     "austria",                     "low",                                  0.15,                               0.15,                                0.15,
         "comp_1",       "1.5C RPS_2030_all",     "austria",             NA_character_,                                  0.30,                               0.30,                                0.30,
         "comp_1",        "NZ 2050_2030_all",     "austria",                    "high",                                  0.45,                               0.45,                                0.45,
         "comp_1",        "NZ 2050_2030_all",     "austria",                  "medium",                                  0.60,                               0.60,                                0.60,
         "comp_1",        "NZ 2050_2030_all",     "austria",                  "medium",                                  0.80,                               0.80,                                0.80,
         "comp_1",        "NZ 2050_2030_all",     "austria",                     "low",                                  0.35,                               0.35,                                0.35,
         "comp_1",        "NZ 2050_2030_all",     "austria",                     "low",                                  0.85,                               0.85,                                0.85,
         "comp_1",        "NZ 2050_2030_all",     "austria",             NA_character_,                                  0.75,                               0.75,                                0.75,
         "comp_1",        "NZ 2050_2030_all",     "germany",                    "high",                                  0.45,                               0.45,                                0.45,
         "comp_1",        "NZ 2050_2030_all",     "germany",                  "medium",                                  0.60,                               0.60,                                0.60,
         "comp_1",        "NZ 2050_2030_all", "netherlands",                    "high",                                  0.45,                               0.45,                                0.45,
         "comp_1",        "NZ 2050_2030_all", "netherlands",                  "medium",                                  0.60,                               0.60,                                0.60,
         "comp_1",        "NZ 2050_2030_all",       "spain",                    "high",                                  0.45,                               0.45,                                0.45,
         "comp_1",        "NZ 2050_2030_all",       "spain",                  "medium",                                  0.60,                               0.60,                                0.60
    # styler: on
  )
}

#' @export
#' @rdname example_emission_product_co2_des_analysis
example_transition_risk_company_transition_risk_avg_best_case_worst_case <- function() {
  tribble(
    # styler: off
    ~companies_id,      ~country, ~grouping_transition_risk, ~avg_transition_risk_equal_weight, ~avg_transition_risk_best_case,  ~avg_transition_risk_worst_case,
         "comp_1",      "france",       "1.5C RPS_2030_all",                              0.25,                           0.25,                             0.25,
         "comp_1",      "france",        "NZ 2050_2030_all",                              0.85,                           0.85,                             0.85,
         "comp_2",      "france",       "1.5C RPS_2030_all",                              0.10,                           0.10,                             0.10,
         "comp_2",      "france",        "NZ 2050_2030_all",                              0.30,                           0.30,                             0.30,
         "comp_3",     "austria",       "1.5C RPS_2030_all",                              0.35,                           0.35,                             0.35,
         "comp_3",     "austria",        "NZ 2050_2030_all",                              0.55,                           0.55,                             0.55,
         "comp_4",     "austria",       "1.5C RPS_2030_all",                              0.70,                           0.70,                             0.70,
         "comp_4",     "austria",        "NZ 2050_2030_all",                              0.20,                           0.20,                             0.20,
         "comp_5",     "germany",       "1.5C RPS_2030_all",                              0.70,                           0.70,                             0.70,
         "comp_5",     "germany",        "NZ 2050_2030_all",                              0.20,                           0.20,                             0.20,
         "comp_6", "netherlands",       "1.5C RPS_2030_all",                              0.70,                           0.70,                             0.70,
         "comp_6", "netherlands",        "NZ 2050_2030_all",                              0.20,                           0.20,                             0.20,
         "comp_7",       "spain",       "1.5C RPS_2030_all",                              0.70,                           0.70,                             0.70,
         "comp_7",       "spain",        "NZ 2050_2030_all",                              0.20,                           0.20,                             0.20
    # styler: on
  )
}

