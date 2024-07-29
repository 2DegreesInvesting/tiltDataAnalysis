library(readr, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)
library(tiltToyData, warn.conflicts = FALSE)
library(tiltTransitionRisk, warn.conflicts = FALSE)
library(tiltIndicatorAfter, warn.conflicts = FALSE)

set.seed(123)
restore <- options(list(
  readr.show_col_types = FALSE,
  tiltIndicatorAfter.output_co2_footprint = TRUE
))

toy_emissions_profile_products_ecoinvent <- read_csv(toy_emissions_profile_products_ecoinvent())
toy_emissions_profile_any_companies <- read_csv(toy_emissions_profile_any_companies())
toy_sector_profile_any_scenarios <- read_csv(toy_sector_profile_any_scenarios())
toy_sector_profile_companies <- read_csv(toy_sector_profile_companies())
toy_europages_companies <- read_csv(toy_europages_companies())
toy_ecoinvent_activities <- read_csv(toy_ecoinvent_activities())
toy_ecoinvent_europages <- read_csv(toy_ecoinvent_europages())
toy_ecoinvent_inputs <- read_csv(toy_ecoinvent_inputs())
toy_isic_name <- read_csv(toy_isic_name())
toy_all_activities_scenario_sectors <- read_csv(toy_all_activities_scenario_sectors())

emissions_profile <- profile_emissions(
  companies = toy_emissions_profile_any_companies,
  co2 = toy_emissions_profile_products_ecoinvent,
  europages_companies = toy_europages_companies,
  ecoinvent_activities = toy_ecoinvent_activities,
  ecoinvent_europages = toy_ecoinvent_europages,
  isic = toy_isic_name
)

sector_profile <- profile_sector(
  companies = toy_sector_profile_companies,
  scenarios = toy_sector_profile_any_scenarios,
  europages_companies = toy_europages_companies,
  ecoinvent_activities = toy_ecoinvent_activities,
  ecoinvent_europages = toy_ecoinvent_europages,
  isic = toy_isic_name
)

transition_risk_profile <- transition_risk_profile(
  emissions_profile = emissions_profile,
  sector_profile = sector_profile,
  co2 = toy_emissions_profile_products_ecoinvent,
  all_activities_scenario_sectors = toy_all_activities_scenario_sectors,
  scenarios = toy_sector_profile_any_scenarios,
  pivot_wider = TRUE,
  for_webtool = FALSE
)

product_emission <- unnest_product(emissions_profile)
company_emission <- unnest_company(emissions_profile)

product_sector <- unnest_product(sector_profile)
company_sector <- unnest_company(sector_profile)

product_transition_risk <- unnest_product(transition_risk_profile)
company_transition_risk <- unnest_company(transition_risk_profile)

usethis::use_data(product_emission, overwrite = TRUE)
usethis::use_data(company_emission, overwrite = TRUE)
usethis::use_data(product_sector, overwrite = TRUE)
usethis::use_data(company_sector, overwrite = TRUE)
usethis::use_data(product_transition_risk, overwrite = TRUE)
usethis::use_data(company_transition_risk, overwrite = TRUE)
