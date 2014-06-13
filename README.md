A single script named 'run_analysis.R' transforms the source data described in 'CodeBook.md' to the required output file 'tidySet'.

The script:  
1) Merges the training and test data sets to create one data set.
- create dataframe combining rows of training and test data sets
- create activity vector combining training and test set activity values.
- create subject(volunteer) vector combining training and test set subject values.

2) Extracts the 66 variables containing estimates of mean and standard deviation from the merged data set. Names of target variables include "mean()" or "std()".

3) Replaces the coded values in the activity vector with descriptive names derived from file 'activity_labels.txt'.

4) Adds descriptive variable names derived from file 'features.txt' to the merged data set. Preprocessing removes characters illegal in R and improves readability.


5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
- split data set into six activity groups
- calculate the mean of each activity group for each variable
- combine results into an activities data frame with the same 66 variables as the
  data set and six rows representing the six activity groups.
- create a similar data frame containing subject (volunteer) means. The subject data
  frame contains 30 rows (one for each subject) and the same 66 variables.
- combine the activities and subject data frames to form a single tidy data set
  with six variables and 36 rows of means.

6) Saves result 'tidySet.txt' using command 'write.table.' User can read file into a data frame using command 'tidySet <- read.table("tidySet.txt").
