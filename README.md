README.md
=========
This is a repository about the course project for the course "Getting and Cleaning Data" in Coursera.

The structure and content of the repository is ordered as follows:
* **README.md**.- A file with the description of the structure of the repository and the content of each file.
* **CodeBook.md**.- A file with the conceptual information about the project divided in two parts *"Study Design"* (or How Collect the Raw Data?) and *"Code Book"* with the information about each variable in the **tidy data set** (the information is about the values of the variables, their units and their descriptions and also the information about the Summary Choices and Transformations that were made).
* **run_analysis.R**.- The R script with the explicit and exact recipe to go from the raw data to the tidy data.


The following files were created by the script and do not need to be downloaded to replicate the project. they were only uploaded to the repository for didactic issues.
* **/data**.- The directory where the raw data was downloaded and unzipped. Also in this directory was created the final file with the tidy data set.
* **/data/tidyDataSet.txt**.- The txt file with the tidy data set created by the R script "run_analysis.R".
* **/data/unzipFolder**.- The directory with the raw data unzipped.
* **/data/unzipFolder/UCI HAR Dataset**.- A directory with the raw data.
* **/data/unzipFolder/UCI HAR Dataset/activity_labels.txt**.- A txt file with the class numbers and the class descriptions for the activities.
* **/data/unzipFolder/UCI HAR Dataset/features.txt**.- A txt file with the features names.
* **/data/unzipFolder/UCI HAR Dataset/features_info.txt**.- A txt file with detailed information about the features.
* **/data/unzipFolder/UCI HAR Dataset/README.txt**.- A txt file with detailed information about the project, the raw data and the files inside the file.
* **/data/unzipFolder/UCI HAR Dataset/test**.- A directory with the test data.
* **/data/unzipFolder/UCI HAR Dataset/test/subject_test.txt**.- A txt file with the ids of the subjects in the test data.
* **/data/unzipFolder/UCI HAR Dataset/test/X_test.txt**.- A txt file with the features values in the test data.
* **/data/unzipFolder/UCI HAR Dataset/test/y_test.txt**.- A txt file with the activity values in the test data.
* **/data/unzipFolder/UCI HAR Dataset/train**.- A directory with the train data.
* **/data/unzipFolder/UCI HAR Dataset/train/subject_train.txt**.- A txt file with the ids of the subjects in the train data.
* **/data/unzipFolder/UCI HAR Dataset/train/X_train.txt**.- A txt file with the features values in the train data.
* **/data/unzipFolder/UCI HAR Dataset/train/y_train.txt**.- A txt file with the activity values in the train data.