# Resulting Data set description

After processing according to the instructions the resulting file is named "tidyDataSet.txt"

### The variables in the tidy data
The "tidyDataSet.txt" file contains 180 rows and 81 columns. Each row has averaged variables for each subject and each activity.

### Only all the variables estimated from mean and standard deviation in the tidy set were kept.

* mean(): Mean value
* std(): Standard deviation

### The resulting data were averaged based on subject and activity group.

Subject column is numbered sequentially from 1 to 30.
Activity column has 6 types:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The column names for the "tidyDataSet.txt" file are as follows:

 [1] "activity_desc"                   "subject"                         "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
 [7] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"                "tGravityAcc-mean()-X"           
[10] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"          
[16] "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"            "tBodyGyro-mean()-X"             
[22] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"         
[28] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"           "tBodyAccMag-mean()"             
[34] "tBodyAccMag-std()"               "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"            
[40] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"              
[46] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[52] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[58] "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"             
[64] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[70] "fBodyAccMag-mean()"              "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()" 
[76] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"      "fBodyBodyGyroJerkMag-meanFreq()"
