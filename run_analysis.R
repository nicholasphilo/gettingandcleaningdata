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

### Reading in the feature information and activity label data:

feature <- read.table("./UCI HAR Dataset/features.txt")
actv_label <- read.table( "./UCI HAR Dataset/activity_labels.txt")
actv_label[,2] <- as.character(actv_label[,2])

### Identifying column names with mean or std in them 

mean_std_condition <- grep("-(mean|std).*"  ,  as.character(feature[,2]))
dta_names <- as.character(  feature[  mean_std_condition  ,2]  )



### selecting mean and std columns of x_data using the mean_std_condition

x_data <- x_data[,mean_std_condition]

### Combining the data sets

data <- cbind.data.frame(  sj_data  ,  y_data  ,  x_data  )
colnames(data) <- c("subject", "activity", dta_names)



### Creating factor variables for the subject and activity variables

data$activity <- factor(data$activity, levels = actv_label[,1], labels = actv_label[,2])
data$subject <- as.factor(data$subject)


### Tidying the dta_names then renaming columns of data

dta_names <- gsub("^t", "Time", dta_names)
dta_names <- gsub("^f", "Frequency", dta_names)
dta_names <- gsub("-", " ", dta_names)
dta_names <- gsub("mean\\(\\)", "Mean", dta_names)
dta_names <- gsub("std\\(\\)", "Standard Deviation", dta_names)
dta_names <- gsub("Body", " Body", dta_names)
dta_names <- gsub("Gyro", " Gyroscope", dta_names)
dta_names <- gsub("Acc", " Accelerometer", dta_names)
dta_names <- gsub("Mag", " Magnitude", dta_names)
dta_names <- gsub("Jerk", " Jerk", dta_names)
dta_names <- gsub("Gravity", " Gravity", dta_names)
dta_names <- gsub("Body Body", "Body", dta_names)
dta_names <- tolower(dta_names)

colnames(data) <- c("subject", "activity", dta_names)


### Creating a tidy data set with the means of the subject and activity

df_melt <- melt(data, id = c("subject", "activity"))
tidy_data <- dcast(df_melt, subject + activity ~ variable, mean)

### Writing the data to tidy.txt file

write.table(tidy_data, "tidydata.txt", row.names = FALSE)
