#README
Coursera course "Getting and Cleaning Data"
By: Jeremy N.


The goal of this course project are enumerated in the following ways:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In the following URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, we can find the data set of all measurements done for the project.

The data is split as follow:

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels, representing the activities ID.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels, representing the activities ID.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

First, the code that does the cleaning is called run_analysis.r.

It fetches everything in the /test folder, EXCEPT the /Inertial Signals subfolders. So, the code fetches the data in subject_test.txt, X_test.txt and y_test.txt.
Same for the /train folder. The code fetches the data from subject_train.txt, X_train.txt and y_train.txt.

Once both folders are fetched, the code merges both into one data set, and also appends the activity_labels as an extra column. That way, we get the activity NAME, and not just the ID.
The whole data set has 564 columns (initial 561 columns of features, + the activity ID, the label, and subject ID, resulting in 564 columns).
Its name is complete_sets, and its columns have been renamed based on the features.txt file. This answers question 1, 3 and 4.

After this, we ONLY include columns containing the means and standard deviations and remove all other columns that are features.
The result is a data frame with 89 columns in total. (meaning 475 columns have been taken out) It has the same name, complete_sets. This answers question 2.

For question 5, we have created a new data frame called summary_means. It uses the aggregate function to group by SubjectID + Activity Label, and calculates the mean of all features (columns)
grouped based on these criteria. Since we have 30 subjects and 6 activities, the result is a data frame with 180 observations.

