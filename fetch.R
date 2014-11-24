## fetch.R retrieves the UCI HAR Dataset and extracts it in the current
## working directory. It obtains the data for local consumption by the
## run_analysis.R script

fn_data <- "UCI_HAR_Dataset.zip"
if (!file.exists(fn_data)) {
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip"
	download.file(fileUrl, destfile=fn_data, method="curl")	
}

unzip(fn_data)

## Removes the variable name, not the file - just for cleanliness
rm(fn_data)
