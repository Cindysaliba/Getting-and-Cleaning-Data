# Getting-and-Cleaning-Data

Step #1 - Merges the training and the test sets to create one data set.

```
activityLabels <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")


subjectTrain <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
featuresX_Train <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE)
activityY_Train <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE)


subjectTest <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
featuresX_Test <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
activityY_Test <- read.table("Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE)


allSubjects <- rbind(subjectTrain, subjectTest)
allFeatures <- rbind(featuresX_Train, featuresX_Test)
allActivities <- rbind(activityY_Train, activityY_Test)


colnames(allFeatures) <- t(features[2])
colnames(allActivities) <- "Activity"
colnames(allSubjects) <- "Subject"
allData <- cbind(allSubjects, allFeatures, allActivities)
```
