% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_cytotox_functions.R
\name{run_cytotox_functions}
\alias{run_cytotox_functions}
\title{Main function to extract Alamar Blue and LDH data from Calculations or Summary .xlsx files}
\usage{
run_cytotox_functions(
  project.output.dir,
  project_name,
  get_files_from_log = TRUE,
  cytoFiles = NULL,
  wllq.tb.by.well.file = NULL
)
}
\arguments{
\item{project.output.dir}{folder where the output folder should be saved and where the files_log is located}

\item{project_name}{name of the project (used to name the output file)}

\item{get_files_from_log}{binary where to read files from files_log (TRUE) or from input vector of cytoFiles (FALSE, see next argument)}

\item{cytoFiles}{(optional) vector of full paths to .xlsx files containing blank-corrected LDH and AB data. File names should contain the word "Calculations" or "Summary"}

\item{wllq.tb.by.well.file}{(optional) full path to table containing well quality definitions and/or notes for specific plates, wells, and assays.
Notes in the wllq.tb.by.well containing "AB" or "LDH" in the affected_assays are used here. If NULL, wllq_by_well will be set to 1 for all data rows}
}
\description{
Main function to extract Alamar Blue and LDH data from Calculations or Summary .xlsx files
}
\details{
This script will extract the blank-corrected fluorescence and optical density values for the LDH and Alamar Blue assays as part of the NFA.
Note that the script gets the blank-corrected values, NOT the pre-normalized percent of control values. Normalization is performed in level 3 of the ToxCast Pipeline.
Example input files:
\itemize{
\item "ON_20160720_MW1139-19_Summary.xlsx" - these contain data for 1 plate per sheet (LDH and Alamar Blue)
\item "20171011_ON G8_2 Calculations.xlsx" - these contain data for 3 plates per sheet (LDH and Alamar Blue)
}
}
