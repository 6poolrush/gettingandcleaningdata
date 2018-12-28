## Merge all of the TEST data sets
## X_test: test set : 2947 lines
## Y_test: contains all of the activity labels (1-6)  1 WALKING - 2 WALKING_UPSTAIRS - 3 WALKING_DOWNSTAIRS - 4 SITTING - 5 STANDING - 6 LAYING : 2947 lines
## subject_test: contains all of the subject labels (subjects 2, 4, 9, 10, 12, 13, 18, 20, 24): 2947 lines
## /Inertial Signals/ : contains many split files about acceleration, angular velocity, etc. of all subjects. 
## Order of columns: Subject id, activity label, activity id, test sets, body_acc_x_test, body_acc_y_test, body_acc_z_test, body_gyro_x_test, body_gyro_y_test, body_gyro_z_test, total_acc_x_test, total_acc_y_test, total_acc_z_test

## Load dplyr library
library(dplyr)

## (1) Reading all the subjects ID (1-30), and the activity IDs (1-6)
## Note: since this is the test subjects, we don't have all 30 participants, just a few.
test_subject_id <- read.table("test/subject_test.txt", header=FALSE, col.names="subject.id")

test_activity_id <- read.table("test/y_test.txt", header=FALSE, col.names="activity.id")

## This produces the data frame that contains the activity labels with the ID associated to it.
activity_labels <- read.table("activity_labels.txt", header=FALSE, col.names = c("id", "label"))

## (2) Merged the activities with the labels now (Question #2)
test_merged_activities <- right_join(activity_labels, test_activity_id, by = c("id" = "activity.id"))
colnames(test_merged_activities) <- c("activity.id", "activity.label")

## (3) Bind the subject ID with their activities in the global test data frame
test_data <- cbind(test_subject_id, test_merged_activities)

## (4) Read the test sets
test_sets <- read.table("test/X_test.txt", header=FALSE)

## (5) Merge the test sets with the subjects and activities, making the complete TEST data set
test_sets <- cbind(test_data, test_sets)

## Now repeat, but for the TRAINING set.
## (6) Reading all the subjects ID (1-30), and the activity IDs (1-6)
train_subject_id <- read.table("train/subject_train.txt", header=FALSE, col.names="subject.id")

train_activity_id <- read.table("train/y_train.txt", header=FALSE, col.names="activity.id")

## (7) Merged the activities with the labels now (Question #2)
train_merged_activities <- right_join(activity_labels, train_activity_id, by = c("id" = "activity.id"))
colnames(train_merged_activities) <- c("activity.id", "activity.label")

## (8) Bind the subject ID with their activities in the global test data frame
train_data <- cbind(train_subject_id, train_merged_activities)

## (9) Read the train sets
train_sets <- read.table("train/X_train.txt", header=FALSE)

## (10) Merge the train sets with the subjects and activities, making the complete TRAIN data set
train_sets <- cbind(train_data, train_sets)

## (11) Merge BOTH test_sets and train_sets together for the complete data set (Question #1)
complete_sets <- rbind(test_sets, train_sets)


## (12) Now we need to rename all 561 columns with their correct names, extracted from the features.txt files
features <- read.table("features.txt", header=FALSE)

## (13) Save all features as characters, prepping the data to be put in column names of the complete set
features <- as.character(features[,2])

## (14) Renaming columns to avoid duplicates in the features vector
features2 <- make.names(features, unique=TRUE)

## (15) Renaming all the columns now (Question#3)
colnames(complete_sets)[4:length(complete_sets)] <- features2

## (16) Fetch only the columns with "mean" and "std", store them in temp variables, then bind them back in a new data frame with only the means/std

temp_sets <- select(complete_sets, contains("mean")) 
temp_sets2 <- select(complete_sets, contains("std"))

## (17) Make the complete set only have mean and std columns
temp_sets <- cbind(temp_sets, temp_sets2)
complete_sets <- cbind(complete_sets[,1:3], temp_sets)

## (18) Clean up the column names 
colnames(complete_sets) <- gsub("\\.\\.", "", colnames(complete_sets))
colnames(complete_sets) <- gsub("^f", "frequency", colnames(complete_sets))
colnames(complete_sets) <- gsub("^t", "time", colnames(complete_sets))
colnames(complete_sets) <- gsub("std", "standarddeviation", colnames(complete_sets))
colnames(complete_sets) <- gsub(".%", "", colnames(complete_sets))

## (19) Run the mean on all columns per subject+activity and store in a new data frame (Question#5)
summary_means <- aggregate(complete_sets[4:length(complete_sets)], list(subject.id = complete_sets$subject.id, activity = complete_sets$activity.label), mean)