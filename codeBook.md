## Getting and Cleaning Data Course Project

*** 
The data was taken from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

*** 

**Folowing steps are taken on the dataset to creat a tidy dataset:**

    * Merges the training and the test sets to create one data set.
    * Extracts only the measurements on the mean and standard deviation for each measurement.
    * Uses descriptive activity names to name the activities in the data set
    * Appropriately labels the data set with descriptive variable names.
    * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**The datset contains following columns:**

1. **Subject:** The id of the subject who perform activity
2. **Activity:** The activity names
3. **Measurements:** Only mean and std features column

    + tBodyAccMeanX
    + tBodyAccMeanY
    + tBodyAccMeanZ
    + tBodyAccStdX
    + tBodyAccStdY
    + tBodyAccStdZ
    + tGravityAccMeanX
    + tGravityAccMeanY
    + tGravityAccMeanZ
    + tGravityAccStdX
    + tGravityAccStdY
    + tGravityAccStdZ
    + tBodyAccJerkMeanX
    + tBodyAccJerkMeanY
    + tBodyAccJerkMeanZ
    + tBodyAccJerkStdX
    + tBodyAccJerkStdY
    + tBodyAccJerkStdZ
    + tBodyGyroMeanX
    + tBodyGyroMeanY
    + tBodyGyroMeanZ
    + tBodyGyroStdX
    + tBodyGyroStdY
    + tBodyGyroStdZ
    + tBodyGyroJerkMeanX
    + tBodyGyroJerkMeanY
    + tBodyGyroJerkMeanZ
    + tBodyGyroJerkStdX
    + tBodyGyroJerkStdY
    + tBodyGyroJerkStdZ
    + tBodyAccMagMean
    + tBodyAccMagStd
    + tGravityAccMagMean
    + tGravityAccMagStd
    + tBodyAccJerkMagMean
    + tBodyAccJerkMagStd
    + tBodyGyroMagMean
    + tBodyGyroMagStd
    + tBodyGyroJerkMagMean
    + tBodyGyroJerkMagStd
    + fBodyAccMeanX
    + fBodyAccMeanY
    + fBodyAccMeanZ
    + fBodyAccStdX
    + fBodyAccStdY
    + fBodyAccStdZ
    + fBodyAccMeanFreqX
    + fBodyAccMeanFreqY
    + fBodyAccMeanFreqZ
    + fBodyAccJerkMeanX
    + fBodyAccJerkMeanY
    + fBodyAccJerkMeanZ
    + fBodyAccJerkStdX
    + fBodyAccJerkStdY
    + fBodyAccJerkStdZ
    + fBodyAccJerkMeanFreqX
    + fBodyAccJerkMeanFreqY
    + fBodyAccJerkMeanFreqZ
    + fBodyGyroMeanX
    + fBodyGyroMeanY
    + fBodyGyroMeanZ
    + fBodyGyroStdX
    + fBodyGyroStdY
    + fBodyGyroStdZ
    + fBodyGyroMeanFreqX
    + fBodyGyroMeanFreqY
    + fBodyGyroMeanFreqZ
    + fBodyAccMagMean
    + fBodyAccMagStd
    + fBodyAccMagMeanFreq
    + fBodyBodyAccJerkMagMean
    + fBodyBodyAccJerkMagStd
    + fBodyBodyAccJerkMagMeanFreq
    + fBodyBodyGyroMagMean
    + fBodyBodyGyroMagStd
    + fBodyBodyGyroMagMeanFreq
    + fBodyBodyGyroJerkMagMean
    + fBodyBodyGyroJerkMagStd
    + fBodyBodyGyroJerkMagMeanFreq


