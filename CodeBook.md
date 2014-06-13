=====================================
Study design:
=====================================
This assignment utilized data downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original data set is archived here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Authors of the original study were:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The authors describe their data collection methodology:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

=====================================
Code book:
=====================================
This assignment utilized the following files provided at the link referenced above:
 - 'features.txt': List of all 561 descriptive variable names.
 - 'activity_labels.txt': List of all 6 descriptive activity names.
 - 'X_train.txt': Training data set.
 - 'y_train.txt': Training set numeric(1-6) activity identifiers for each observation.
 - 'X_test.txt': Test data set.
 - 'y_test.txt': Test set numeric(1-6) activity identifiers for each observation.
 - 'subject_train.txt': Training set numeric(1-30) subject (volunteer) identifiers for each observation.
 - 'subject_test.txt'" Test set numeric(1-30) subject (volunteer) identifiers for each observation.

The 561 variables included in the training and test data sets measure various forms of acceleration
and angular velocity. All measurements have been normalized and bounded within [-1,1]. 

The authors provide, but this assignment does not utilize, the original physical data. Units for those data are standard gravity units 'g' for acceleration and radian/second for angular velocity.

This assignment extracts sixty-six variables from the source data. Half measure means and incorporate the term 'mean().' The remaining half measure corresponding standard deviations and incorporate the term 'std().'

The assignment excludes variables with names including 'meanFreq' and 'gravityMean.' Those variables have no standard deviation counterparts.

The variable names provided in 'features.txt' required cleaning before incorporation in the data set. Preprocessing purged characters not legal in R and substituted more descriptive names. Cryptic leading letters 't' and 'f' became 'timeDomain' and 'freqDomain.' Illegal 'mean()' and 'std()' became 'Mean' and 'StdDev.' 'BodyGyro' became 'AngularVel.'

The improved variable names retain the ambiguous terms 'Jerk' and 'Mag.' These terms likely refer to the separation of sensor "gravitational and body motion components" quoted above.

The list of original and revised variable names follows:

Original Names  | Revised Names
------------- | -------------
tBodyAcc-mean()-X  |  timeDomainBodyAccMeanX
tBodyAcc-mean()-Y  |  timeDomainBodyAccMeanY
tBodyAcc-mean()-Z  |  timeDomainBodyAccMeanZ
tBodyAcc-std()-X  |  timeDomainBodyAccStdDevX
tBodyAcc-std()-Y  |  timeDomainBodyAccStdDevY
tBodyAcc-std()-Z  |  timeDomainBodyAccStdDevZ
tGravityAcc-mean()-X  |  timeDomainGravityAccMeanX
tGravityAcc-mean()-Y  |  timeDomainGravityAccMeanY
tGravityAcc-mean()-Z  |  timeDomainGravityAccMeanZ
tGravityAcc-std()-X  |  timeDomainGravityAccStdDevX
tGravityAcc-std()-Y  |  timeDomainGravityAccStdDevY
tGravityAcc-std()-Z  |  timeDomainGravityAccStdDevZ
tBodyAccJerk-mean()-X  |  timeDomainBodyAccJerkMeanX
tBodyAccJerk-mean()-Y  |  timeDomainBodyAccJerkMeanY
tBodyAccJerk-mean()-Z  |  timeDomainBodyAccJerkMeanZ
tBodyAccJerk-std()-X  |  timeDomainBodyAccJerkStdDevX
tBodyAccJerk-std()-Y  |  timeDomainBodyAccJerkStdDevY
tBodyAccJerk-std()-Z  |  timeDomainBodyAccJerkStdDevZ
tBodyGyro-mean()-X  |  timeDomainAngVelMeanX
tBodyGyro-mean()-Y  |  timeDomainAngVelMeanY
tBodyGyro-mean()-Z  |  timeDomainAngVelMeanZ
tBodyGyro-std()-X  |  timeDomainAngVelStdDevX
tBodyGyro-std()-Y  |  timeDomainAngVelStdDevY
tBodyGyro-std()-Z  |  timeDomainAngVelStdDevZ
tBodyGyroJerk-mean()-X  |  timeDomainAngVelJerkMeanX
tBodyGyroJerk-mean()-Y  |  timeDomainAngVelJerkMeanY
tBodyGyroJerk-mean()-Z  |  timeDomainAngVelJerkMeanZ
tBodyGyroJerk-std()-X  |  timeDomainAngVelJerkStdDevX
tBodyGyroJerk-std()-Y  |  timeDomainAngVelJerkStdDevY
tBodyGyroJerk-std()-Z  |  timeDomainAngVelJerkStdDevZ
tBodyAccMag-mean()  |  timeDomainBodyAccMagMean
tBodyAccMag-std()  |  timeDomainBodyAccMagStdDev
tGravityAccMag-mean()  |  timeDomainGravityAccMagMean
tGravityAccMag-std()  |  timeDomainGravityAccMagStdDev
tBodyAccJerkMag-mean()  |  timeDomainBodyAccJerkMagMean
tBodyAccJerkMag-std()  |  timeDomainBodyAccJerkMagStdDev
tBodyGyroMag-mean()  |  timeDomainAngVelMagMean
tBodyGyroMag-std()  |  timeDomainAngVelMagStdDev
tBodyGyroJerkMag-mean()  |  timeDomainAngVelJerkMagMean
tBodyGyroJerkMag-std()  |  timeDomainAngVelJerkMagStdDev
fBodyAcc-mean()-X  |  freqDomainBodyAccMeanX
fBodyAcc-mean()-Y  |  freqDomainBodyAccMeanY
fBodyAcc-mean()-Z  |  freqDomainBodyAccMeanZ
fBodyAcc-std()-X  |  freqDomainBodyAccStdDevX
fBodyAcc-std()-Y  |  freqDomainBodyAccStdDevY
fBodyAcc-std()-Z  |  freqDomainBodyAccStdDevZ
fBodyAccJerk-mean()-X  |  freqDomainBodyAccJerkMeanX
fBodyAccJerk-mean()-Y  |  freqDomainBodyAccJerkMeanY
fBodyAccJerk-mean()-Z  |  freqDomainBodyAccJerkMeanZ
fBodyAccJerk-std()-X  |  freqDomainBodyAccJerkStdDevX
fBodyAccJerk-std()-Y  |  freqDomainBodyAccJerkStdDevY
fBodyAccJerk-std()-Z  |  freqDomainBodyAccJerkStdDevZ
fBodyGyro-mean()-X  |  freqDomainAngVelMeanX
fBodyGyro-mean()-Y  |  freqDomainAngVelMeanY
fBodyGyro-mean()-Z  |  freqDomainAngVelMeanZ
fBodyGyro-std()-X  |  freqDomainAngVelStdDevX
fBodyGyro-std()-Y  |  freqDomainAngVelStdDevY
fBodyGyro-std()-Z  |  freqDomainAngVelStdDevZ
fBodyAccMag-mean()  |  freqDomainBodyAccMagMean
fBodyAccMag-std()  |  freqDomainBodyAccMagStdDev
fBodyBodyAccJerkMag-mean()  |  freqDomainBodyBodyAccJerkMagMean
fBodyBodyAccJerkMag-std()  |  freqDomainBodyBodyAccJerkMagStdDev
fBodyBodyGyroMag-mean()  |  freqDomainBodyAngVelMagMean
fBodyBodyGyroMag-std()  |  freqDomainBodyAngVelMagStdDev
fBodyBodyGyroJerkMag-mean()  |  freqDomainBodyAngVelJerkMagMean
fBodyBodyGyroJerkMag-std()  |  freqDomainBodyAngVelJerkMagStdDev

This assignment derives mean values for the extracted variables by activity and volunteer subject. Six activities plus thirty volunteer subjects yield thirty-six rows of means for the sixty-six variables described above.

'activity_labels.txt' provides the six activity row labels. The assignment script modifies those names as shown below:

Original Names  | Revised Names
------------- | -------------
WALKING|walking
WALKING_UPSTAIRS|walkingUpstairs
WALKING_DOWNSTAIRS|walkingDownstairs
SITTING|sitting
STANDING|standing
LAYING|laying

The script creates volunteer subject names by appending numeral 1 to 30 to the term 'subject.'
