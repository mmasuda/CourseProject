##CourseProject
=============

CourseProject assignment in Getting and Cleaning Data class
==================================================================
run_analysis.R
==================================================================
Michinori Masuda
==================================================================

##Overall description
====================

This R program creates a tidy data set from Human Activity Recognition Using Smartphones Dataset as following according to Course project assignment in Getting and Cleaning Data class.

1)Merges the training and the test sets to create one data set
2)Extracts only the measurements on the mean and standard deviation for each measurement
3)Uses descriptive activity names to name the activities in the data set
4)Labels the data set with descriptive variable names which are described in Codebook.md 
5)Creates a tidy data set with the average of each variable for each activity and each subject


For your reference, summary of the experiment and original data location are shown below.
-location
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

-summary
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
==================================================================

##Detailed description
====================
-preposition
Accorging to the instruction, 
this programm assumes the original data locates in working directory and keeps it's directory as below
./activity_lables.txt,features.txt 
./train/subject_train.txt,X_train.txt,Y_train.txt
./test/subject_test.txt,X_test.txt,Y_test.txt

-argument
no arguments

-return
A tidy data as dataframe which provides the average of each variable for each activity and each subject.
These variables are extructed only the measurements on the mean and standard deviation for each measurement
