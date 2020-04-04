# Getting-and-Cleaning-Data-Final-Project
Contains the files as per Final Project request for Getting and Cleaning data coursera class.

## Overview

This repository was crated in order to complete the final project assignment ofof Getting and Cleaning Data Coursera course. 

The Study Design is as follows:

I opted to mostly use the "dplyr" Library in order to chive 2 main goals
* dplyr optimizes and speeds up processing speed
* dplyr library simplifies from my perspective the handling of data, commands tend to be easier to use

## Process Steps Description
* Preprocessing, download and unzip the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Step 1. Merge train and test datasets.
* Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
   * 2.1 Appropriately labels the data set with descriptive variable names. 
   * 2.2 Extract specified mean and syd measurements from merged datase
* Step 3. Uses descriptive activity names to name the activities in the data set
* Step 4. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

## Data description
The variables in the data X are sensor signals measured with waist-mounted smartphone from 30 subjects. The variable in the data Y indicates activity type the subjects performed during recording.

## Procesing Script
The file run_analysis.R contains the code to process raw data acocring to the Instrucions provided. It has been uploaded to this repository at the following url: 

### Tidy dataset

After all processin occurs the  
The new generated dataset contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.
