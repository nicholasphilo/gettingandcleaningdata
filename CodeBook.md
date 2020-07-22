# Code Book

Code book for the tidy data produced by run_analysis.R

## Original data

The original data set can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description from README:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.




## Transformations
1. The training and test data sets of X, Y and subject are partially merged.
2. The columns which contain "mean" and "std" are used to select desired columns from the X data.  
3. The factor variables of subject and activity are then merged to form the total data set.  
4. The columns are renamed to be more descriptive. 
5. The data is then grouped by subject and activity and the means for these categories are reported in a table.  
5. This table is written to the working directory as "tidy_data.txt".  


## Tidy Variables

**subject**: the study volunteers aged 19-48 from 1:30
**activity**: values of "STANDING", "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "LAYING" which represent the task the volunteers where undertaking.




- time body accelerometer mean x
- time body accelerometer mean y
- time body accelerometer mean z
- time body accelerometer standard deviation x
- time body accelerometer standard deviation y
- time body accelerometer standard deviation z
- time gravity accelerometer mean x
- time gravity accelerometer mean y
- time gravity accelerometer mean z
- time gravity accelerometer standard deviation x
- time gravity accelerometer standard deviation y
- time gravity accelerometer standard deviation z
- time body accelerometer jerk mean x
- time body accelerometer jerk mean y
- time body accelerometer jerk mean z
- time body accelerometer jerk standard deviation x
- time body accelerometer jerk standard deviation y
- time body accelerometer jerk standard deviation z
- time body gyroscope mean x
- time body gyroscope mean y
- time body gyroscope mean z
- time body gyroscope standard deviation x
- time body gyroscope standard deviation y
- time body gyroscope standard deviation z
- time body gyroscope jerk mean x
- time body gyroscope jerk mean y
- time body gyroscope jerk mean z
- time body gyroscope jerk standard deviation x
- time body gyroscope jerk standard deviation y
- time body gyroscope jerk standard deviation z
- time body accelerometer magnitude mean
- time body accelerometer magnitude standard deviation
- time gravity accelerometer magnitude mean
- time gravity accelerometer magnitude standard deviation
- time body accelerometer jerk magnitude mean
- time body accelerometer jerk magnitude standard deviation
- time body gyroscope magnitude mean
- time body gyroscope magnitude standard deviation
- time body gyroscope jerk magnitude mean
- time body gyroscope jerk magnitude standard deviation
- frequency body accelerometer mean x
- frequency body accelerometer mean y
- frequency body accelerometer mean z
- frequency body accelerometer standard deviation x
- frequency body accelerometer standard deviation y
- frequency body accelerometer standard deviation z
- frequency body accelerometer meanfreq() x
- frequency body accelerometer meanfreq() y
- frequency body accelerometer meanfreq() z
- frequency body accelerometer jerk mean x
- frequency body accelerometer jerk mean y
- frequency body accelerometer jerk mean z
- frequency body accelerometer jerk standard deviation x
- frequency body accelerometer jerk standard deviation y
- frequency body accelerometer jerk standard deviation z
- frequency body accelerometer jerk meanfreq() x
- frequency body accelerometer jerk meanfreq() y
- frequency body accelerometer jerk meanfreq() z
- frequency body gyroscope mean x
- frequency body gyroscope mean y
- frequency body gyroscope mean z
- frequency body gyroscope standard deviation x
- frequency body gyroscope standard deviation y
- frequency body gyroscope standard deviation z
- frequency body gyroscope meanfreq() x
- frequency body gyroscope meanfreq() y
- frequency body gyroscope meanfreq() z
- frequency body accelerometer magnitude mean
- frequency body accelerometer magnitude standard deviation
- frequency body accelerometer magnitude meanfreq()
- frequency body accelerometer jerk magnitude mean
- frequency body accelerometer jerk magnitude standard deviation
- frequency body accelerometer jerk magnitude meanfreq()
- frequency body gyroscope magnitude mean
- frequency body gyroscope magnitude standard deviation
- frequency body gyroscope magnitude meanfreq()
- frequency body gyroscope jerk magnitude mean
- frequency body gyroscope jerk magnitude standard deviation
- frequency body gyroscope jerk magnitude meanfreq()



