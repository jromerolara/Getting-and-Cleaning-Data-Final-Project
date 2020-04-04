rm(list = ls())

setwd("/Users/jromero/Documents/R/datasciencecoursera/data/UCI HAR Dataset/")
library(dplyr)
library(tidyr)


# Read the file with features description ####

features <- as_tibble(data.table::fread("./features.txt")) 
colNames <- as.vector(features$V2)

# read activity labels file and process for descriptive names ####

activity_labels <-  as_tibble(data.table::fread("./activity_labels.txt")) 
activity_labels <- rename(activity_labels, "activity_id" = V1)
activity_labels <- rename(activity_labels, "activity_desc" = V2)

# Load train data ####
x_train <- as_tibble(data.table::fread("./train/X_train.txt")) 
y_train <- as_tibble(data.table::fread("./train/y_train.txt")) 
subject_train <- as_tibble(data.table::fread("./train/subject_train.txt"))

# Load test data ####

x_test <- as_tibble(data.table::fread("./test/X_test.txt")) 
y_test <- as_tibble(data.table::fread("./test/y_test.txt")) 
subject_test <- as_tibble(data.table::fread("./test/subject_test.txt"))

#Step 1. Merge train and test datasets ####

x_full <- rbind(x_train,x_test)
y_full <- rbind(y_train, y_test)
subject_full <- rbind(subject_train, subject_test)

# Step 2. Extracts only the measurements on the mean and standard deviation for each measurement. ####

# 2.1 Appropriately labels the data set with descriptive variable names. ####
colnames(x_full) <- colNames # Assign column names to full X data set (561 column Names assigned)
colnames(subject_full) <- "subject"

# 2.2 Extract specified mean and syd measurements from merged dataset ####
x_full <- tbl_df(x_full[,grepl("mean|std", colnames(x_full))]) # subset only measurements of mean/std for X
                                                               # resulting in a 10,299 rows x 79 columns data set

# Step 3. Uses descriptive activity names to name the activities in the data set ####
y_full <- rename(y_full, "activity_id" = V1) # Rename Column of Y merged data set for descriptive name
y_full <- left_join(y_full,activity_labels) # joined activity_labels and Y merged data sets to obtain requested
                                            # descriptive name activities
# Step 4  Creates a second, independent tidy data set with the average ####
              # of each variable for each activity and each subject

FinalSet <- tbl_df(cbind(y_full, subject_full, x_full ))
FinalSet <- FinalSet %>% select(-activity_id) %>%
                         group_by(activity_desc,subject) %>%
                         summarize_each(funs(mean))
write.table(FinalSet, file = "tidyDataSet.txt", row.names = FALSE, col.names = TRUE)
