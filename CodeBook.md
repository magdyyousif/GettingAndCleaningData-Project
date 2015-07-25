# Study Design

'Run_analysis.r' script performs the steps described in the course project's definition as below:

* for both training and testing data the following is done
** Load the main data file 
** load the activities for the data
** load the data subject
** comine all the above data

* after loading the both training and testing data we merge them both together
* after that only the measurements on mean and standard deviation for each measurement is extracted.
* Then Activites are labeled by activity name instead of identification number
*a summary data is created to summerize data by get the average of every field after grouping by activity and subject

# Codebook
the result set contain the below variables:

*Activity: the activity performed by the subject while wearing the measuring devices
*Subject: the subject number of the person performing this specific activity
*Avergae of all the below field for all the measurments for this person on this action:
** tBodyAcc-mean()-X
** tBodyAcc-mean()-Y
** tBodyAcc-mean()-Z
** tBodyAcc-std()-X
** tBodyAcc-std()-Y
** tBodyAcc-std()-Z
** tGravityAcc-mean()-X
** tGravityAcc-mean()-Y
** tGravityAcc-mean()-Z
** tGravityAcc-std()-X
** tGravityAcc-std()-Y
** tGravityAcc-std()-Z
** tBodyAccJerk-mean()-X
** tBodyAccJerk-mean()-Y
** tBodyAccJerk-mean()-Z
** tBodyAccJerk-std()-X
** tBodyAccJerk-std()-Y
** tBodyAccJerk-std()-Z
** tBodyGyro-mean()-X
** tBodyGyro-mean()-Y
** tBodyGyro-mean()-Z
** tBodyGyro-std()-X
** tBodyGyro-std()-Y
** tBodyGyro-std()-Z
** tBodyGyroJerk-mean()-X
** tBodyGyroJerk-mean()-Y
** tBodyGyroJerk-mean()-Z
** tBodyGyroJerk-std()-X
** tBodyGyroJerk-std()-Y
** tBodyGyroJerk-std()-Z
** tBodyAccMag-mean()
** tBodyAccMag-std()
** tGravityAccMag-mean()
** tGravityAccMag-std()
** tBodyAccJerkMag-mean()
** tBodyAccJerkMag-std()
** tBodyGyroMag-mean()
** tBodyGyroMag-std()
** tBodyGyroJerkMag-mean()
** tBodyGyroJerkMag-std()
** fBodyAcc-mean()-X
** fBodyAcc-mean()-Y
** fBodyAcc-mean()-Z
** fBodyAcc-std()-X
** fBodyAcc-std()-Y
** fBodyAcc-std()-Z
** fBodyAccJerk-mean()-X
** fBodyAccJerk-mean()-Y
** fBodyAccJerk-mean()-Z
** fBodyAccJerk-std()-X
** fBodyAccJerk-std()-Y
** fBodyAccJerk-std()-Z
** fBodyGyro-mean()-X
** fBodyGyro-mean()-Y
** fBodyGyro-mean()-Z
** fBodyGyro-std()-X
** fBodyGyro-std()-Y
** fBodyGyro-std()-Z
** fBodyAccMag-mean()
** fBodyAccMag-std()
** fBodyBodyAccJerkMag-mean()
** fBodyBodyAccJerkMag-std()
** fBodyBodyGyroMag-mean()
** fBodyBodyGyroMag-std()
** fBodyBodyGyroJerkMag-mean()
** fBodyBodyGyroJerkMag-std()


