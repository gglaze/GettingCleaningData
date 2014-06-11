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

Thirty-three names in 'features.txt' incorporate the term 'mean().' All have counterparts incorporating the term 'std().' This assignment utilizes only those mean/standard deviation variable pairs.

The assignment excludes variables with names including 'meanFreq' and 'gravityMean.' Those variables have no standard deviation counterparts.

The variable names provided in 'features.txt' required cleaning before incorporation in the data set. Preprocessing purged characters not legal in R and substituted more descriptive names. Cryptic leading letters 't' and 'f' became 'timeDomain' and 'freqDomain.' Illegal 'mean()' and 'std()' became 'Mean' and 'StdDev.' 'BodyGyro' became 'AngularVel.'

The improved variable names retain the ambiguous terms 'Jerk' and 'Mag.' These terms likely refer to the separation of sensor "gravitational and body motion components" quoted above.

The authors' detailed variable list follows:

These signals were used to estimate variables of the feature vector for each pattern:
 '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 - tBodyAcc-XYZ
 - tGravityAcc-XYZ
 - tBodyAccJerk-XYZ
 - tBodyGyro-XYZ
 - tBodyGyroJerk-XYZ
 - tBodyAccMag
 - tGravityAccMag
 - tBodyAccJerkMag
 - tBodyGyroMag
 - tBodyGyroJerkMag
 - fBodyAcc-XYZ
 - fBodyAccJerk-XYZ
 - fBodyGyro-XYZ
 - fBodyAccMag
 - fBodyAccJerkMag
 - fBodyGyroMag
 - fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

 - mean(): Mean value
 - std(): Standard deviation
 - mad(): Median absolute deviation
 - max(): Largest value in array
 - min(): Smallest value in array
 - sma(): Signal magnitude area
 - energy(): Energy measure. Sum of the squares divided by the number of values.
 - iqr(): Interquartile range
 - entropy(): Signal entropy
 - arCoeff(): Autorregresion coefficients with Burg order equal to 4
 - correlation(): correlation coefficient between two signals
 - maxInds(): index of the frequency component with largest magnitude
 - meanFreq(): Weighted average of the frequency components to obtain a mean
 - frequency
 - skewness(): skewness of the frequency domain signal
 - kurtosis(): kurtosis of the frequency domain signal
 - bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
 - angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample.
 These are used on the angle() variable:

 - gravityMean
 - tBodyAccMean
 - tBodyAccJerkMean
 - tBodyGyroMean
 - tBodyGyroJerkMean
