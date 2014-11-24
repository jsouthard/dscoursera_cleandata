## run_analysis.R prepares data from the UCI HAR Dataset, showing the
## average of selected activity variables by activity and subject

require(data.table)

## Test for the unpacked folder, if it isn't present, obtain it
if (!file.exists("./UCI HAR Dataset")) {
	message("Could not find unpacked data set, retrieving from source")
	source("fetch.R")
}

## Load useful data files
act_labels  <- read.table("./UCI HAR Dataset/activity_labels.txt")
features    <- read.table("./UCI HAR Dataset/features.txt")
subj_test   <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subj_train  <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test      <- read.table("./UCI HAR Dataset/test/X_test.txt")
x_train     <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_test      <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_train     <- read.table("./UCI HAR Dataset/train/y_train.txt")

subj_data <- rbind(subj_train, subj_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
rm(subj_train, subj_test, x_train, x_test, y_train, y_test)

#subj_data <- subj_test
#x_data <- x_test
#y_data <- y_test
#rm(subj_test, x_test, y_test)

## Reduce column data to only those variables that are -mean() or -std()
colnames(x_data) <- features$V2
wanted_vals <- grep("-(mean|std)[(]", features$V2)
x_data <- x_data[,wanted_vals]

## Clean up column names
new_names <- colnames(x_data)
new_names <- sub("BodyBody", "Body", new_names, fixed=T)
new_names <- sub("-mean()", "Mean", new_names, fixed=T)
new_names <- sub("-std()", "StdDev", new_names, fixed=T)
new_names <- sub("-([XYZ])", "\\1", new_names, perl=TRUE, fixed=FALSE)
new_names <- sub("^t", "Time", new_names)
new_names <- sub("^f", "Freq", new_names)
colnames(x_data) <- new_names

## Add subject and activity records
x_data <- cbind(subj_data, y_data, x_data)
colnames(x_data)[c(1,2)] <- c("Subject", "Activity")
rm(subj_data, y_data)

## Substitute Activity Names
x_data$Activity <- factor(x_data$Activity, act_labels$V1, act_labels$V2)

## Format tidy data
dt <- data.table(x_data)
rm(x_data)
tidyout <- dt[,lapply(.SD,mean),by=list(Subject,Activity)]
tidyout
