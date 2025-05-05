# Getting and Cleaning Data Course Project
## Introduction
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project involves the following steps:
1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set.
4. Appropriately labeling the data set with descriptive variable names.
5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Source
The data used in this project is from the Human Activity Recognition Using Smartphones Dataset. The data description is available at the following link: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The dataset can be downloaded from the following link: [Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## How script work
1. **Download and unzip the dataset**: The script checks if the dataset is already downloaded and unzipped. If not, it downloads the zip file and unzips it into a folder named "UCI HAR Dataset".
2. **Load the necessary libraries**: The script loads the required libraries, including `dplyr` for data manipulation.
3. **Read the data**: The script reads the training and test datasets, as well as the features and activity labels.
4. **Merge the datasets (Task 1)**: The script merges the training and test datasets into one dataset.
5. **Extract mean and standard deviation (Task 2)**: The script extracts only the measurements on the mean and standard deviation for each measurement. The method `grep` is used to filter the columns that contain `-mean()` or `-std()`.
6. **Use descriptive activity names (Task 3)**: The script replaces the activity numbers with descriptive activity names using the `activity_labels` dataset.
7. **Label the dataset with descriptive variable names (Task 4)**: The script renames the columns to make them more descriptive. It uses `gsub` to replace certain patterns in the column names.
8. **Create a tidy dataset (Task 5)**: The script creates a second, independent tidy dataset with the average of each variable for each activity and each subject. It uses the `group_by` and `summarise` functions from the `dplyr` package to achieve this.

## How to run
To run the script, follow these steps:
1. Open R or RStudio.
2. Set the working directory to the location of the script.
3. Run the script by sourcing it or executing it line by line.
4. **Output**: The script generates a tidy dataset named `tidy_data.txt` in the working directory. This dataset contains the average of each variable for each activity and each subject.