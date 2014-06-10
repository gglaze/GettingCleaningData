setwd("~/Dropbox/Documents/GettingCleaningData/Project")
# id 1-6 of volunteer activities
activity_labels <- read.table("./data/activity_labels.txt", quote="\"")
# descriptive labels for 561 variables
features <- read.table("./data/features.txt", quote="\"")
#
# training set 7352 obs. of 561 variables
X_train <- read.table("./data/train/X_train.txt", quote="\"")
# training set 7352 obs. of 1 variable (dependent variable = activity)
y_train <- read.table("./data/train/y_train.txt", quote="\"")
# id 1-30 of volunteer subjects
subject_train <- read.table("./data/train/subject_train.txt", quote="\"")
#
# test set 2497 obs. of 561 variables
X_test <- read.table("./data/test/X_test.txt", quote="\"")
# test set 2497 obs. of 1 variable (dependent variable = activity)
y_test <- read.table("./data/test/y_test.txt", quote="\"")
# id 1-30 of volunteer subjects
subject_test <- read.table("./data/test/subject_test.txt", quote="\"")
#
# Rubric 1: Merges the training and the test sets to create one data set.
dF <- rbind(X_train, X_test)
# Combine training and test activities
dfActivities <- rbind(y_train, y_test)
colnames(dfActivities) <- "Activity"
# Combine training and test subject(volunteer) IDs
dfSubjects <- rbind(subject_train, subject_test)
#
# Rubric 3: Uses descriptive activity names to name the activities in the data set
dfActivities <- activity_labels[dfActivities[[1]],2]
#
# Rubric 4: Appropriately labels the data set with descriptive variable names.
colnames(dF) <- features[[2]]
#
# Rubric 2: Extracts only the measurements on the mean and standard deviation for each measurement.
f <- as.character(features[[2]])
x <- grep('mean()',f,fixed=TRUE) # identify "measurements on the mean"
y <- grep('std()', f, fixed=TRUE) # indentify "measurements on the ... standard deviation"
xy <- c(x,y) # combine and sort the variables to be extracted
xy <- sort(xy)
dF <- dF[,xy] # extract subset of desired variables
dfNames <- names(dF) # retain names of remaining variables
#
# Rubric 5: Creates a second, independent tidy data set with the average of each variable
#           for each activity and each subject. 
#
# split observations into 6 activity groups
dfActivityGroups <- split(dF, dfActivities)
activityMeans = data.frame(NULL) # initialize data frame for activity means
# calculate means for each variable for each activity group
# then, build data frame with 1 column of variable means for each activity group
# new data frame has 6 rows and 66 columns
for(i in activity_labels[[2]]){
  x = sapply(dfActivityGroups[[i]], mean)
  activityMeans <- rbind(activityMeans, x)
}
# name rows with descriptive activity names
rownames(activityMeans) <- activity_labels[[2]]
# add descriptive variable (column) names
names(activityMeans) <- dfNames
#
# split observations into 30 subject groups
dfSubjectGroups <- split(dF, dfSubjects)
subjectMeans = data.frame(NULL) # initialize data frame for subject means
# calculate means for each variable for each subject group, then
# build data frame with 1 row of variable means for each of 30 subject groups
# new data frame has 30 rows and 66 columns
for(i in 1:30){
  x = sapply(dfSubjectGroups[[i]], mean)
  subjectMeans <- rbind(subjectMeans, x)
}
# create descriptive subject names
subjectNames <- paste("subject", 1:30)
# name rows with descriptive subject names
rownames(subjectMeans) <- subjectNames
# add descriptive variable (column) names
names(subjectMeans) <- dfNames
#
# combine activity means and subject means data frames to form
# final unified tidy data set with 66 variables
# and 36 observations (1 for each group: 6 activities and 30 subjects)
tidySet <- rbind(activityMeans, subjectMeans)
# save file in csv format
write.csv(tidySet, file="tidySet.csv")
