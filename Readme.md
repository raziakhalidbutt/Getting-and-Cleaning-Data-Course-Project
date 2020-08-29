## Getting and Cleaning Data - Course Project



The data was taken from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).



Following files were used from the data:



1. UCI HAR Dataset/train/X_train.txt
2. UCI HAR Dataset/train/y_train.txt
3. UCI HAR Dataset/train/subject_train.txt
4. UCI HAR Dataset/test/X_test.txt
5. UCI HAR Dataset/test/y_test.txt
6. UCI HAR Dataset/test/subject-test.txt
7. UCI HAR Dataset/features.txt
8. UCI HAR Dataset/activity_labels.txt



Following are the steps taken for this project:



1. First read the above mentioned files
2. Merge the training and test files
3. Select column form the features file that are related to mean and std and then rename the selected columns
4. Select only those column from merge data that we filter from step 3.
5. Combined the features, activity and subject data.
6. Change the activity column values with the activity names.
7. created a second, independent tidy data set with the average of each variable for each activity and each subject.


