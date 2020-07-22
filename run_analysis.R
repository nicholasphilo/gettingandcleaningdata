### run_analysis ###





# Loading required packages:

library(reshape2)


### Checking for the required data then downloading if required:

if(  !dir.exists("UCI HAR Dataset")  ){
    
    download.file(
        url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "coursera_dta.zip"
                  )
    
    unzip("coursera_dta.zip")
    
    
}


### reading training and test data

### train

x_train <- read.table(  "./UCI HAR Dataset/train/X_train.txt"  )
y_train <- read.table(  "./UCI HAR Dataset/train/Y_train.txt")
sj_train <- read.table( "./UCI HAR Dataset/train/subject_train.txt")

# test
x_test <- read.table( "./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
sj_test <- read.table( "./UCI HAR Dataset/test/subject_test.txt")

### Partially merging the train and test data sets

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
sj_data <- rbind(sj_train, sj_test)


### removing uneeded data sets

rm("x_train","y_train","sj_train","x_test","y_test","sj_test")

### Reading in the feature data and activity label data:

feature <- read.table("./UCI HAR Dataset/features.txt")
actv_label <- read.table( "./UCI HAR Dataset/activity_labels.txt")
actv_label[,2] <- as.character(a_label[,2])

### Identifying column names with mean or std in them 

mean_std_condition <- grep("-(mean|std).*"  ,  as.character(feature[,2]))





