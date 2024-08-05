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
          ~benchmark, ~tilt_subsector, ~co2_footprint,   ~ep_product,
    "tilt_subsector",     "chemicals",              1,       "water",
    "tilt_subsector",     "chemicals",              4,  "television",
    "tilt_subsector",     "chemicals",              9,      "tables",
    "tilt_subsector",     "chemicals",              8, "electricity",
    "tilt_subsector",     "chemicals",       NA_real_,        "meat",
    "tilt_subsector",  "iron & steel",              1,      "tables",
    "tilt_subsector",  "iron & steel",              2,       "water",
    "tilt_subsector",  "iron & steel",              4,        "tent"
    # styler: on
  )
}
