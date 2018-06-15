# This file represents the "Instruction List" that list all the changes over 
# the raw data to transform into the tidy data

run_analysis <- function(
    rawDataUrl = 
        "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"){
    
    
    # Step 1 - Create a directory called "data" into the work directory if 
    # not exists
    if(!file.exists("./data")){
        dir.create("./data")
    }
    
    # Step 2 - Download the zip file with the raw data into the "data" 
    # directory if not exists
    if(!file.exists("./data/dataset.zip")){
        download.file(rawDataUrl, destfile = "./data/dataset.zip")
    }
    
    # Step 3 - Unzip the zip file with the raw data into the "unzipFolder" 
    # directory if not exists
    if(!file.exists("./data/unzipFolder")){
        unzip("./data/dataset.zip", exdir = "./data/unzipFolder")
    }
    
    
    ###### READING THE "TEST DATA" FROM 9 SUBJECTS (2947 ROWS) ######
    # We consider that the correlative order is respected within the three
    # documents that define the Test Data ("subject_test.txt", "y_test.txt" & 
    # "X_test.txt")
    
    # Step 4 - Read the file "subject_test.txt" that contains the list of the 
    # ids for the test subjects (1 per row)
    subject_test <- read.table("./data/unzipFolder/UCI HAR Dataset/test/subject_test.txt",
                               col.names = c("subjectid"))
    
    # Step 5 - Read the file "y_test.txt" that contains the list of classes of
    # activities (1 per row)
    y_test <- read.table("./data/unzipFolder/UCI HAR Dataset/test/y_test.txt",
                               col.names = c("activityclass"))
    
    # Step 6 - Before we read the file with the features, we need to load a 
    # vector with the names of the features from a file called "features.txt"
    featuresnames <- read.table("./data/unzipFolder/UCI HAR Dataset/features.txt",
                         col.names = c("featurenumber", "featurename"))
    
    # Step 7 - Read the file "X_test.txt" that contains the list of 561 
    # features per each subject and activitie
    X_test <- read.table("./data/unzipFolder/UCI HAR Dataset/test/X_test.txt",
                         col.names = featuresnames[,2])
    
    # Step 8 - Merge "subject_test", "y_test" & "X_test" into one data.frame
    # called "testData"
    testData <- cbind(subject_test, y_test, X_test)
    
    
    ###### READING THE "TRAIN DATA" FROM 21 SUBJECTS (7352 ROWS) ######
    # We consider that the correlative order is respected within the three
    # documents that define the Train Data ("subject_train.txt", "y_train.txt" 
    # & "X_train.txt")
    
    # Step 9 - Read the file "subject_train.txt" that contains the list of the 
    # ids for the train subjects (1 per row)
    subject_train <- read.table("./data/unzipFolder/UCI HAR Dataset/train/subject_train.txt",
                               col.names = c("subjectid"))
    
    # Step 10 - Read the file "y_train.txt" that contains the list of classes 
    # of activities (1 per row)
    y_train <- read.table("./data/unzipFolder/UCI HAR Dataset/train/y_train.txt",
                         col.names = c("activityclass"))
    
    # Step 11 - Read the file "X_train.txt" that contains the list of 561 
    # features per each subject and activitie
    X_train <- read.table("./data/unzipFolder/UCI HAR Dataset/train/X_train.txt",
                         col.names = featuresnames[,2])
    
    # Step 12 - Merge "subject_train", "y_train" & "X_train" into one data.frame
    # called "trainData"
    trainData <- cbind(subject_train, y_train, X_train)
    
    
    ###### POINT NUMBER "1" OF THE REQUIREMENTS OF THE PROJECT ######
    # Step 13 - "Merges the training and the test sets to create one data set."
    # This unique dataset will be called "dataset"
    dataset <- rbind(trainData, testData)
    
    
    ###### POINT NUMBER "2" OF THE REQUIREMENTS OF THE PROJECT ######
    # Step 14 - "Extracts only the measurements on the mean and standard 
    # deviation for each measurement."
    # As the file "features_info.txt" indicates, the features that refer to the
    # mean include the text "mean" in their name and the features that refer 
    # to the standard deviation include the text "std" in their name (both
    # in lowercase and "mean" it's distinct of "meanFreq")
    
    # Step 14:A - First, we will load the package "dplyr" and cast our 
    # dataframe into a tibble for reasons of efficiency
    library(plyr) # The reason to load this package here is showed in Step 15:B 
    library(dplyr)
    dataset <- as_tibble(dataset)
    
    # Step 14:B -Then, we will use the function select() and matches() from
    # the package "dplyr" to extracts just the features that we need
    datasetSelected <- select(dataset, subjectid, activityclass, 
                              matches("mean[^Freq]", ignore.case = FALSE), 
                              matches("std", ignore.case = FALSE))
    
    
    ###### POINT NUMBER "3" OF THE REQUIREMENTS OF THE PROJECT ######
    # Step 15 - "Uses descriptive activity names to name the activities in the 
    # data set."
    
    # Step 15:A - First, we create a copy of the data set to preserve the 
    # changes, then, we change the data class of the variable "activityclass"
    # from int to factor for reasons of efficiency
    dataMoreClear <- datasetSelected
    dataMoreClear$activityclass <- as.factor(dataMoreClear$activityclass)
    
    # Step 15:B - Second, we load the file "activity_labels.txt" that has two
    # columns with the number and definition of each category of activity
    # (6 in total)
    activitylabels <- read.table("./data/unzipFolder/UCI HAR Dataset/activity_labels.txt",
                                    col.names = c("activitynumber", "activitydefinition"))
    
    # Step 15:C - Then, we rename the values of the factors using the function
    # "mapvalues()" from "plyr" package (loaded above)
    # Note that we have used a very descriptive definition with lowercase 
    # letters and without the underscore sign.
    dataMoreClear$activityclass <- mapvalues(dataMoreClear$activityclass,
                                             from = activitylabels[,1],
                                             to = tolower(gsub("_", "", activitylabels[,2])))
    
    
    ###### POINT NUMBER "4" OF THE REQUIREMENTS OF THE PROJECT ######
    # Step 16 - "Appropriately labels the data set with descriptive variable
    # names."
    
    # Step 16:A - First, we create a copy of the data set to preserve the 
    # changes, then, we will obtain the names of the variables and eliminate
    # the points and transform the text to lowercase
    tidyDataSet <- dataMoreClear
    variableNames <- names(tidyDataSet) 
    descriptiveVariableNames <- gsub("\\.", "", variableNames)
    descriptiveVariableNames <- tolower(descriptiveVariableNames)
    
    # Step 16:B - Then, we will make the following transformations on the 
    # labels so that they are more descriptive:
    #
    # t --> timedomain
    # f --> frequencydomain
    # acc --> acceleration
    # gyro --> angularvelocity
    # jerk --> byjerkderivative
    # mag --> byeuclideannorm
    # mean --> meansignal
    # std --> standarddeviationsignal
    # x --> inaxisx
    # y --> inaxisy
    # z --> inaxisz
    descriptiveVariableNames <- sub("^t", "timedomain", descriptiveVariableNames)
    descriptiveVariableNames <- sub("^f", "frequencydomain", descriptiveVariableNames)
    descriptiveVariableNames <- sub("acc", "acceleration", descriptiveVariableNames)
    descriptiveVariableNames <- sub("gyro", "angularvelocity", descriptiveVariableNames)
    descriptiveVariableNames <- sub("jerk", "byjerkderivative", descriptiveVariableNames)
    descriptiveVariableNames <- sub("mag", "byeuclideannorm", descriptiveVariableNames)
    descriptiveVariableNames <- sub("mean", "meansignal", descriptiveVariableNames)
    descriptiveVariableNames <- sub("std", "standarddeviationsignal", descriptiveVariableNames)
    descriptiveVariableNames <- sub("x$", "inaxisx", descriptiveVariableNames)
    descriptiveVariableNames <- sub("y$", "inaxisy", descriptiveVariableNames)
    descriptiveVariableNames <- sub("z$", "inaxisz", descriptiveVariableNames)
    
    # Step 16:C - Update the labels of the data set by the new more descriptive
    # labels
    names(tidyDataSet) <- descriptiveVariableNames
    
    
    ##### WE HAVE NOW OUR FIRST TIDY DATASET CALLED "tidyDataSet" #####
    
    
    ###### POINT NUMBER "5" OF THE REQUIREMENTS OF THE PROJECT ######
    # Step 17 - "From the data set in step 4, creates a second, independent 
    # tidy data set with the average of each variable for each activity and 
    # each subject."
    
    # Step 17:A - First, we create a copy of the actual tidy dataset
    newTidyDataSet <- tidyDataSet
    
    # Step 17:B - Second, we are going to group the data set by "subjectid" and
    # "activityclass"
    newTidyDataSet <- group_by(newTidyDataSet, subjectid, activityclass)
    
    # Step 17:C - Then, we are going to create a loop where we will add a 
    # column for each variable with the average of that variable for each
    # activity and each subject.
    # The index "i" goes through all the variables' columns (starts from 3
    # to the last column of the dataset
    lastIndexColumn <- dim(newTidyDataSet)[2]
    
    # All the names of the new columns have the word "average" in the end
    # With the purpose of generating the new dynamically calculated columns
    # we will use the "parse_quosure ()" function of the "rlang" package
    library(rlang)
    for(i in 3:lastIndexColumn){
        colName <- paste0(names(newTidyDataSet)[i], "average")
        colValue <- paste0(names(newTidyDataSet)[i], "/sum(", names(newTidyDataSet)[i], ")") 
        newTidyDataSet <- mutate(newTidyDataSet, 
                                 (!!colName = !!parse_quosure(colValue)))
        names(newTidyDataSet)[lastIndexColumn+i-2] <- colName
    }
    
    ##### WE HAVE NOW OUR FINAL TIDY DATASET CALLED "newTidyDataSet" #####
    
    ##### WE RETURN THIS DATA SET AS A TXT FILE #####
    write.table(newTidyDataSet, file = "./data/tidyDataSet.txt", row.names = FALSE)
    newTidyDataSet
    
    ##### FINISH #####
    
}