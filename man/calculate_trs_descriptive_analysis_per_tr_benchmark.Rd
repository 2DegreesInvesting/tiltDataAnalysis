% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/calculate_trs_descriptive_analysis_per_tr_benchmark.R
\name{calculate_trs_descriptive_analysis_per_tr_benchmark}
\alias{calculate_trs_descriptive_analysis_per_tr_benchmark}
\title{Calculate the descriptive analysis of transition risk scores for all
\code{tilt_subsectors} per scenario-year-tilt_subsector benchmark}
\usage{
calculate_trs_descriptive_analysis_per_tr_benchmark(
  transition_risk_product,
  transition_risk_benchmark
)
}
\arguments{
\item{transition_risk_product}{A dataframe. Product-level output of
Transition risk profile}

\item{transition_risk_benchmark}{A string. Benchmark of Transition risk
profile}
}
\value{
A dataframe
}
\description{
This function calculates the descriptive analysis of transition risk scores
for all \code{tilt_subsectors} per scenario-year-tilt_subsector benchmark using
product-level output of Transition risk profile indicator.
}
\examples{
transition_risk_product_example <-
  example_transition_risk_product_trs_des_analysis()
transition_risk_product_example

# Calculates the descriptive analysis for benchmark "1.5C RPS_2030_tilt_subsector"
calculate_trs_descriptive_analysis_per_tr_benchmark(
  transition_risk_product_example,
  "1.5C RPS_2030_tilt_subsector"
)
}
