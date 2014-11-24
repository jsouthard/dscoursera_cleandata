## Code Book for Course Project

### Feature Selection and Naming
The features selected for this dataset are adapted from accelerometer and
gyroscope 3-axis data obtained from the UCI HAR Dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data file originates from:
https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip 

Within the dataset, the `features_info.txt` file describes the individual measurements
and their derivations.

The following transformations were performed against the UCI HAR Dataset to
produce the output data:

1. Combining the test and training data sets
1. Selection of mean and standard deviation columns of the original data
1. Association of subjects and their activities with the measurement data
1. Variable name translations following these patterns:
    * Time-domain measurements changed from a prefix of "t" to "Time"
    * Frequency-domain measurements calculated from FFTs changed from a prefix
    of "f" to "Freq"
    * Value names for mean values changed from "-mean()" to "Mean"
    * Value names for standard deviation values changed from "-std()" to "StdDev"
    * Axis-specific measurements changed from "-X", "-Y", "-Z" to "X", "Y", and "Z" respectively
    * Incorrectly labeled variables had the extra "Body" removed to make them
    consistent with the original Code Book (e.g. "FreqBodyBody" became "FreqBody")
1. Mean values were calculated on a per-subject, per-activity basis

The output data consists of the following fields:
* Subject - Test participant number
* Activity - Coded activity of the participant
* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStdDevX
* TimeBodyAccStdDevY
* TimeBodyAccStdDevZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStdDevX
* TimeGravityAccStdDevY
* TimeGravityAccStdDevZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStdDevX
* TimeBodyAccJerkStdDevY
* TimeBodyAccJerkStdDevZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStdDevX
* TimeBodyGyroStdDevY
* TimeBodyGyroStdDevZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStdDevX
* TimeBodyGyroJerkStdDevY
* TimeBodyGyroJerkStdDevZ
* TimeBodyAccMagMean
* TimeBodyAccMagStdDev
* TimeGravityAccMagMean
* TimeGravityAccMagStdDev
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStdDev
* TimeBodyGyroMagMean
* TimeBodyGyroMagStdDev
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStdDev
* FreqBodyAccMeanX
* FreqBodyAccMeanY
* FreqBodyAccMeanZ
* FreqBodyAccStdDevX
* FreqBodyAccStdDevY
* FreqBodyAccStdDevZ
* FreqBodyAccJerkMeanX
* FreqBodyAccJerkMeanY
* FreqBodyAccJerkMeanZ
* FreqBodyAccJerkStdDevX
* FreqBodyAccJerkStdDevY
* FreqBodyAccJerkStdDevZ
* FreqBodyGyroMeanX
* FreqBodyGyroMeanY
* FreqBodyGyroMeanZ
* FreqBodyGyroStdDevX
* FreqBodyGyroStdDevY
* FreqBodyGyroStdDevZ
* FreqBodyAccMagMean
* FreqBodyAccMagStdDev
* FreqBodyAccJerkMagMean
* FreqBodyAccJerkMagStdDev
* FreqBodyGyroMagMean
* FreqBodyGyroMagStdDev
* FreqBodyGyroJerkMagMean
* FreqBodyGyroJerkMagStdDev

## Excerpt from features_info.txt in the data set:
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> 
> tBodyAcc-XYZ  
> tGravityAcc-XYZ  
> tBodyAccJerk-XYZ  
> tBodyGyro-XYZ  
> tBodyGyroJerk-XYZ  
> tBodyAccMag  
> tGravityAccMag  
> tBodyAccJerkMag  
> tBodyGyroMag  
> tBodyGyroJerkMag  
> fBodyAcc-XYZ  
> fBodyAccJerk-XYZ  
> fBodyGyro-XYZ  
> fBodyAccMag  
> fBodyAccJerkMag  
> fBodyGyroMag  
> fBodyGyroJerkMag  