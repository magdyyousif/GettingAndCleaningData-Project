library(dplyr)

LoadDataFile <- function (name, colNames)
{
  fileName <-  paste("UCI HAR Dataset\\", name, "\\X_", name, ".txt", sep = "")
  activityFileName <- paste("UCI HAR Dataset\\", name, "\\Y_", name, ".txt", sep = "")
  subjectFileName <- paste("UCI HAR Dataset\\", name, "\\subject_", name, ".txt", sep = "")
  data <- read.table(file = fileName, col.names = colNames)
  #colnames(data) <- colNames
  activities <- read.table(file = activityFileName)
  colnames(activities) <- c("ActivityID")
  
  subjects <- read.table(file = subjectFileName)
  colnames(subjects) <- c("Subject")
  cbind(data, activities, subjects)
}


# Load lookup date
#### Load Column Names
colNames <- read.table("UCI HAR Dataset\\features.txt", header = FALSE, sep = ' ' )
colNames <- colNames[,"V2"]
#### Load Activity Labels
ActivityLabels <- read.table("UCI HAR Dataset\\activity_labels.txt")
colnames(ActivityLabels) <- c("ActivityID", "Activity")



# Load tain and test data
trainingData <- LoadDataFile("train", colNames)
testingData <- LoadDataFile("test", colNames)

# step 1
# Merges the training and the test sets to create one data set.
allData <- tbl_df(rbind(trainingData, testingData))


#step 2
#Extracts only the measurements on the mean and standard deviation for each measurement. 
# doing so by filtering the  selected columns using dplyr package based on column name
allStdMeanData <- select(allData, matches(".std|.mean"), ActivityID, Subject)


#step 3
#Uses descriptive activity names to name the activities in the data set
# doing that by joining with the activities labels and then removing the activity ID field
# which is no longer needed 
allStdMeanData<- 
  allStdMeanData %>%
  inner_join(tbl_df(ActivityLabels), by = "ActivityID") %>%
  select(-(ActivityID))


#step4 
# Data Already labeled in while loading


Summary <- 
  allStdMeanData %>%
  group_by(Activity,Subject) %>%
  summarise_each(funs(mean))

write.table(Summary, "TidyDataSummary.txt", row.name=FALSE)