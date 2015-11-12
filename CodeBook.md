##Data
The tidy data was created from the Human Activity Recognition Using Smartphones Dataset. If your're interested the raw data is available for download here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Changes to the orginal data

1. I loaded the training data by combining the data (X_train.txt), user ids (subject_train.txt), and activity ids (y_train.txt)
1. I set descriptive column names for X_train and Y_train, from features.txt and activity_labels.txt
1. I combined the data, user ids and activity ids into one data frame
1. I used a regular expression to find the column indices and names for all columns that calculated mean or standard deviation.
1. I subsetted the raw to only use the columns from the previous step
1. I did the same thing for the test data.
1. I combined the training and test data into one long table (adding the one to the bottom of the other).
1. I used melt to split the data into tuples using (subject, activity_id) 
1. I used dcast to put the data into a wide table where each row starts with subject, activity_id and is followed by long a long list of columns with names using a "subject + activity_label ~ variable" template 

The tidy data we are left with has one row for every user, activity pair, and a column for the average of each of the mean/standard deviation measures for that user/activity pair.

## Code Book

* subject: the number used to identify the subject across all datasets
* activity_label: the name of the activity the measurements are for (e.g., 'WALKING')
* tBodyAcc.mean...X: Mean of body linear acceleration along X axis.
* tBodyAcc.mean...Y: Mean of body linear acceleration along Y axis.
* tBodyAcc.mean...Z: Mean of body linear acceleration along Z axis.
* tBodyAcc.std...X: Standard deviation of body linear acceleration along X axis.
* tBodyAcc.std...Y: Standard deviation of body linear acceleration along Y axis.
* tBodyAcc.std...Z: Standard deviation of body linear acceleration along Z axis.
* tGravityAcc.mean...X: Mean of gravity linear acceleration along X axis.
* tGravityAcc.mean...Y: Mean of gravity linear acceleration along Y axis.
* tGravityAcc.mean...Z: Mean of gravity linear acceleration along Z axis.
* tGravityAcc.std...X: Standard deviation of gravity linear acceleration along X axis.
* tGravityAcc.std...Y: Standard deviation of gravity linear acceleration along Y axis.
* tGravityAcc.std...Z: Standard deviation of gravity linear acceleration along Z axis.
* tBodyAccJerk.mean...X: Mean of body linear acceleration jerk along X axis.
* tBodyAccJerk.mean...Y: Mean of body linear acceleration jerk along Y axis.
* tBodyAccJerk.mean...Z: Mean of body linear acceleration jerk along Z axis.
* tBodyAccJerk.std...X: Standard deviation of body linear acceleration jerk along X axis.
* tBodyAccJerk.std...Y: Standard deviation of body linear acceleration jerk along Y axis.
* tBodyAccJerk.std...Z: Standard deviation of body linear acceleration jerk along Z axis.
* tBodyGyro.mean...X: Mean of body angular velocity along X axis.
* tBodyGyro.mean...Y: Mean of body angular velocity along Y axis.
* tBodyGyro.mean...Z: Mean of body angular velocity along Z axis.
* tBodyGyro.std...X: Standard deviation of body angular velocity along X axis.
* tBodyGyro.std...Y: Standard deviation of body angular velocity along Y axis.
* tBodyGyro.std...Z: Standard deviation of body angular velocity along Z axis.
* tBodyGyroJerk.mean...X: Mean of body angular velocity jerk along X axis.
* tBodyGyroJerk.mean...Y: Mean of body angular velocity jerk along Y axis.
* tBodyGyroJerk.mean...Z: Mean of body angular velocity jerk along Z axis.
* tBodyGyroJerk.std...X: Standard deviation of body angular velocity jerk along X axis.
* tBodyGyroJerk.std...Y: Standard deviation of body angular velocity jerk along Y axis.
* tBodyGyroJerk.std...Z: Standard deviation of body angular velocity jerk along Z axis.
* tBodyAccMag.mean..: Mean of the magnitude (using Euclidean norm) of body linear acceleration.
* tBodyAccMag.std..: Standard deviation of the magnitude (using Euclidean norm) of body linear acceleration.
* tGravityAccMag.mean..: Mean of the magnitude (using Euclidean norm) of gravity linear acceleration.
* tGravityAccMag.std..: Standard deviation of the magnitude (using Euclidean norm) of gravity linear acceleration.
* tBodyAccJerkMag.mean..: Mean of the magnitude (using Euclidean norm) of gravity linear acceleration jerk.
* tBodyAccJerkMag.std..: Standard deviation of the magnitude (using Euclidean norm) of gravity linear acceleration jerk.
* tBodyGyroMag.mean..: Mean of the magnitude (using Euclidean norm) of body angular velocity.
* tBodyGyroMag.std..: Standard deviation of the magnitude (using Euclidean norm) of body angular velocity.
* tBodyGyroJerkMag.mean..: Mean of the magnitude (using Euclidean norm) of body angular velocity jerk.
* tBodyGyroJerkMag.std..: Standard deviation of the magnitude (using Euclidean norm) of body angular velocity jerk.
* fBodyAcc.mean...X: Fast Fourier Transform of mean of body linear acceleration along X axis.
* fBodyAcc.mean...Y: Fast Fourier Transform of mean of body linear acceleration along Y axis.
* fBodyAcc.mean...Z: Fast Fourier Transform of mean of body linear acceleration along Z axis.
* fBodyAcc.std...X: Fast Fourier Transform of standard deviation of body linear acceleration along X axis.
* fBodyAcc.std...Y: Fast Fourier Transform of standard deviation of body linear acceleration along Y axis.
* fBodyAcc.std...Z: Fast Fourier Transform of standard deviation of body linear acceleration along Z axis.
* fBodyAccJerk.mean...X: Fast Fourier Transform of mean of body linear acceleration jerk along X axis.
* fBodyAccJerk.mean...Y: Fast Fourier Transform of mean of body linear acceleration jerk along Y axis.
* fBodyAccJerk.mean...Z: Fast Fourier Transform of mean of body linear acceleration jerk along Z axis.
* fBodyAccJerk.std...X: Fast Fourier Transform of standard deviation of body linear acceleration jerk along X axis.
* fBodyAccJerk.std...Y: Fast Fourier Transform of standard deviation of body linear acceleration jerk along Y axis.
* fBodyAccJerk.std...Z: Fast Fourier Transform of standard deviation of body linear acceleration jerk along Z axis.
* fBodyGyro.mean...X: Fast Fourier Transform of mean of body angular velocity along X axis.
* fBodyGyro.mean...Y: Fast Fourier Transform of mean of body angular velocity along Y axis.
* fBodyGyro.mean...Z: Fast Fourier Transform of mean of body angular velocity along Z axis.
* fBodyGyro.std...X: Fast Fourier Transform of standard deviation of body angular velocity along X axis.
* fBodyGyro.std...Y: Fast Fourier Transform of standard deviation of body angular velocity along Y axis.
* fBodyGyro.std...Z: Fast Fourier Transform of standard deviation of body angular velocity along Z axis.
* fBodyAccMag.mean..: Fast Fourier Transform of mean of the magnitude (using Euclidean norm) of body linear acceleration.
* fBodyAccMag.std..: Fast Fourier Transform of standard deviation of the magnitude (using Euclidean norm) of body linear acceleration.
* fBodyBodyAccJerkMag.mean..: Fast Fourier Transform of mean of the magnitude (using Euclidean norm) of body angular velocity jerk.
* fBodyBodyAccJerkMag.std..: Fast Fourier Transform of standard deviation of the magnitude (using Euclidean norm) of body angular velocity jerk.
* fBodyBodyGyroMag.mean..: Fast Fourier Transform of mean of the magnitude (using Euclidean norm) of body angular velocity.
* fBodyBodyGyroMag.std..: Fast Fourier Transform of standard deviation of the magnitude (using Euclidean norm) of body angular velocity.
* fBodyBodyGyroJerkMag.mean..: Fast Fourier Transform of mean of the magnitude (using Euclidean norm) of body angular velocity jerk.
* fBodyBodyGyroJerkMag.std..: Fast Fourier Transform of standard deviation of the magnitude (using Euclidean norm) of body angular velocity jerk.