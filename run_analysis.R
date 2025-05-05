# Install required packages
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}

# Load required packages
library(dplyr)

# Preparation
## Download file
current_dir <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

file_path <- file.path(current_dir, "UCI_HAR_Dataset.zip")
if (!file.exists(file_path)) {
  download.file(url, file_path)
}

## Unzip the file
unzip_dir <- file.path(current_dir, "UCI HAR Dataset")
if (!dir.exists(unzip_dir)) {
  unzip(file_path, exdir = current_dir)
}


# Task 1: Merges the training and the test sets to create one data set.
## Read the data
x_train <- read.table(file.path(unzip_dir, "train", "X_train.txt"))
y_train <- read.table(file.path(unzip_dir, "train", "y_train.txt"), col.names = "activity")
subject_train <- read.table(file.path(unzip_dir, "train", "subject_train.txt"), col.names = "subject")
x_test <- read.table(file.path(unzip_dir, "test", "X_test.txt"))
y_test <- read.table(file.path(unzip_dir, "test", "y_test.txt"), col.names = "activity")
subject_test <- read.table(file.path(unzip_dir, "test", "subject_test.txt"), col.names = "subject")

## Merge the training and test sets
train_data <- cbind(subject_train, y_train, x_train)
test_data <- cbind(subject_test, y_test, x_test)
merged_data <- rbind(train_data, test_data)

# Task 2: Extracts only the measurements on the mean and standard deviation for each measurement.
## Extract mean and standard deviation features
features <- read.table(file.path(unzip_dir, "features.txt"), col.names = c("index", "feature"))
mean_std_features <- grep("-(mean|std)\\(\\)", features$feature)

## Prepend subject and activity column
mean_std_features <- mean_std_features[mean_std_features > 0] # Ensure valid indices
mean_std_features <- c(1, 2, mean_std_features + 2) # Add subject and activity columns
extracted_data <- merged_data[, mean_std_features]

## Rename columns
colnames(extracted_data) <- c("subject", "activity", features$feature[mean_std_features[3:length(mean_std_features)] - 2])

# Task 3: Uses descriptive activity names to name the activities in the data set
## Replace activity numbers with descriptive names
activity_labels <- read.table(file.path(unzip_dir, "activity_labels.txt"), col.names = c("index", "activity"))
extracted_data$activity <- factor(extracted_data$activity, levels = activity_labels$index, labels = activity_labels$activity)

# Task 4: Appropriately labels the data set with descriptive variable names.
## Clean up variable names
names(extracted_data) <- gsub("^t", "time", names(extracted_data))
names(extracted_data) <- gsub("^f", "frequency", names(extracted_data))
names(extracted_data) <- gsub("Acc", "Accelerometer", names(extracted_data))
names(extracted_data) <- gsub("Gyro", "Gyroscope", names(extracted_data))
names(extracted_data) <- gsub("Mag", "Magnitude", names(extracted_data))
names(extracted_data) <- gsub("BodyBody", "Body", names(extracted_data))
names(extracted_data) <- gsub("\\(\\)", "", names(extracted_data))
names(extracted_data) <- gsub("-", "_", names(extracted_data))
names(extracted_data) <- gsub("mean", "Mean", names(extracted_data))
names(extracted_data) <- gsub("std", "Std", names(extracted_data))
names(extracted_data) <- gsub("gravity", "Gravity", names(extracted_data))
names(extracted_data) <- gsub("angle", "Angle", names(extracted_data))

# Task 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Create a tidy data set with the average of each variable for each activity and each subject
tidy_data <- extracted_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean)) %>%
  ungroup()
  
## Write the tidy data set to a text file
write.table(tidy_data, file.path(current_dir, "tidy_data.txt"), row.names = FALSE, sep = "\t", quote = FALSE)

## Write extracted data to a text file
write.table(extracted_data, file.path(current_dir, "extracted_data.txt"), row.names = FALSE, sep = "\t", quote = FALSE)