# Coursera Data Science Specialization #
## Getting and Cleaning Data ##
https://www.coursera.org/learn/data-cleaning

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

* a tidy data set as described below,
* a link to a Github repository with your script for performing the analysis, and
* a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts.

This repo explains how all of the scripts work and how they are connected.

## Files in this Repo ##

* README.md - ***Description about the project***
* Codebook.md - ***Describes the variables, the data, and any transformations or work performed to clean up the data***
* run_analysis.R - ***R Script of the code***

## Project Description ##

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Accomplishment of run_analysis.R ##
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**The script does not assume that the data is in the working directory, during runtime you will have to specify the path**
**No package is required as only the base package has been used in the script**

## Explanation of the script ##

* **Code Section 1: Merges the training and the test sets to create one data set.**
 * This code block reads only the test and train data,
 * then combines them into one combined dataset.

* **Code Section 2: Extracts only the measurements on the mean and standard deviation.**
 * Reads the features data
 * Assigns the features as column names to the combined dataset
 * Extracts only the features with mean and standard deviation
 
* **Code section 3: Uses descriptive activity names to name the activities in the dataset**
 * Reads train and test label data and subject data
 * Binds them together and them binds them to the combined dataset
 * The activity numbers are replaced by activity names
 * Combines subjects with the dataset
  
* **Code section 4: Appropriately labels the data set with descriptive variable name**
 * Changes the column names to lower case
 * Removes non-alphanumeric characters
 
* **Code section 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**
 * A new dataset is created by grouping each activity for each subject
 * The resulting dataset is written in a csv format.
