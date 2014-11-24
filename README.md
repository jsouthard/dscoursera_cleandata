## Getting and Cleaning Data course project

The main R script for the project is `run_analysis.R`

`fetch.R` is for retrieving and unpacking the UCI HAR dataset manually. If
run_analysis does not find an unpacked data set in its working directory, it
will automatically invoke `fetch.R` to download the file and unpack it.

Requirements:
* data.table package
* R v3.1.1 (tested against this version)

Running from the command line (Linux/Mac):
~~~~
    R --no-save < run_analysis.R > output
~~~~

Running from the RStudio console:
Ensure your current working directoy is the location of the run_analysis.R
script, then:
~~~~
    source("run_analysis.R")
~~~~

If run from the command line, the output file will show the tidy data output,
if run from the R Studio console, the variable `tidyout` will have the final data
