A single script named 'run_analysis.R' transforms the source data described in 'CodeBook.md' to the required output file 'tidySet'.

The script:
1) Merges the training and test data sets to create one data set.
- create dataframe combining rows of training and test data sets
- create activity vector combining training and test set activity values.
- create subject(volunteer) vector combining training and test set subject values.

2) Replaces the coded values in the activity vector with descriptive names from
   file 'activity_labels.txt'.

3) Adds descriptive variable names from file 'features.txt' to the merged data set.

4) Extracts the first six variables containing the measurements of mean and standard deviation 
   from the merged data set.

5) Creates a second, independent tidy data set with the average of each variable
   for each activity and each subject. 
- split data set into six activity groups
- calculate the mean of each activity group for each variable
- combine results into an activities data frame with the same six variables as the
  data set and six rows representing the six activity groups.
- create a similar data frame containing subject (volunteer) means. The subject data
  frame contains 30 rows (one for each subject) and the same six variables.
- combine the activities and subject data frames to form a single tidy data set
  with six variables and 36 rows of means.
