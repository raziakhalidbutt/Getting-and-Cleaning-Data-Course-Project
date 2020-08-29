#reading train data
X_train <- read.csv('UCI HAR Dataset/train/X_train.txt', sep = "", header=FALSE)
y_train <- read.csv('UCI HAR Dataset/train/y_train.txt', sep = "",header=FALSE)
sub_train <- read.csv('UCI HAR Dataset/train/subject_train.txt', sep = "",header=FALSE)

#reading test data
X_test <- read.csv('UCI HAR Dataset/test/X_test.txt', sep = "",header=FALSE)
y_test <- read.csv('UCI HAR Dataset/test/y_test.txt', sep = "",header=FALSE)
sub_test <- read.csv('UCI HAR Dataset/test/subject_test.txt', sep = "",header=FALSE)

#Merging train and test data
x_data <- rbind(X_train,X_test)
y_data <- rbind(y_train,y_test)
sub_data <- rbind(sub_train,sub_test)

#load features 
features <- read.csv('UCI HAR Dataset/features.txt', sep = "", header=FALSE)

#load activity labels
activity_labels <- read.csv('UCI HAR Dataset/activity_labels.txt', sep = "",header=FALSE)
activity_labels[,2] <- as.character(activity_labels[,2])

#Extracted only the measurements on the mean and standard deviation for each measurement
selectedcolumns <- grep("-(mean|std).*", as.character(features[,2]))
selected_columns_names <- features[selectedcolumns,2]
selected_columns_names <- gsub("-mean", "Mean", selected_columns_names)
selected_columns_names <- gsub("-std", "Std", selected_columns_names)
selected_columns_names <- gsub("[-()]", "", selected_columns_names)



x_data <- x_data[selectedcolumns]
data <- cbind(sub_data,x_data,y_data)

#Appropriately labels the data set with descriptive variable names
colnames(data) <- c("Subject",  selected_columns_names,"Activity")

#Uses descriptive activity names to name the activities in the data set.
data$Activity <- factor(data$Activity, levels = activity_labels[,1], labels = activity_labels[,2])
data$Subject <- as.factor(data$Subject)

#creates a second, independent tidy data set with the average of each variable for each activity and each subject.
melt_data <- melt(data, id = c("Subject", "Activity"))
tidyData <- dcast(melt_data, Subject + Activity ~ variable, mean)

write.table(tidyData, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)
