 ==================================================================
 Study Design:
 ==================================================================
 This study utilized data downloaded here:
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
 The original data set is archived here:
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 =====
 Authors of the study generating the study were:
 Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
 Smartlab - Non Linear Complex Systems Laboratory
 DITEN - Universit� degli Studi di Genova.
 Via Opera Pia 11A, I-16145, Genoa, Italy.
 activityrecognition@smartlab.ws
 www.smartlab.ws
===== 
 The study authors describe their experiment as follows:
 "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."
=====
 This assignment utilized the following files provided at the link referenced above:
 - 'features.txt': List of all 561 descriptive variable names.
 - 'activity_labels.txt': List of all 6 descriptive activity names.
 - 'X_train.txt': Training data set.
 - 'y_train.txt': Training set numeric(1-6) activity identifiers for each observation.
 - 'X_test.txt': Test data set.
 - 'y_test.txt': Test set numeric(1-6) activity identifiers for each observation.
 - 'subject_train.txt': Training set numeric(1-30) subject (volunteer) identifiers for each observation.
 - 'subject_test.txt'" Test set numeric(1-30) subject (volunteer) identifiers for each observation.

 
 
================================================================== 
 Code Book:
================================================================== 
The provided data required no cleaning or transformations not already performed by the authors. 'README.md' describes steps performed to transform the provided data into the required tidy data set.

The file "features.txt" includes descriptive labels for all 561 variables in "train.txt" and "test.txt." These labels comprise the row labels of the final tidy data set.

The labels in 'activity_labels.txt' provide the names for six of the 36 variables in the final tidy data set.

The study authors provide the following technical summary of the 561 sensor-generated variables in 'X_train.txt' and 'X_test.txt':

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean