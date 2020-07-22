### run_analysis ###

### assumes you have downloaded assignment data and unzipped in working directory

# Loading required packages:

library(reshape2)


### 1. reading training and test data

### train

x_train <- read.table(  "./UCI HAR Dataset/train/X_train.txt"  )
y_train <- read.table(  "/UCI HAR Dataset/train/Y_train.txt")
sj_train <- read.table( "/UCI HAR Dataset/train/subject_train.txt")

# test
x_test <- read.table( "/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("/UCI HAR Dataset/test/Y_test.txt")
sj_test <- read.table( "/UCI HAR Dataset/test/subject_test.txt")

