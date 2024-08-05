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
