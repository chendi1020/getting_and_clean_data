#download the zip data file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "datafile.zip")


feature <- read.table(unz("datafile.zip", "UCI HAR Dataset/features.txt"), sep = "", header = F)
act_label <- read.table(unz("datafile.zip", "UCI HAR Dataset/activity_labels.txt"), sep = "", header = F)
#test
x_test <- read.table(unz("datafile.zip", "UCI HAR Dataset/test/X_test.txt"), sep = "", header = F)
y_test <- read.table(unz("datafile.zip", "UCI HAR Dataset/test/y_test.txt"), sep = "", header = F)
subj_test <- read.table(unz("datafile.zip", "UCI HAR Dataset/test/subject_test.txt"), sep = "", header = F)
#train
x_train <- read.table(unz("datafile.zip", "UCI HAR Dataset/train/X_train.txt"), sep = "", header = F)
y_train <- read.table(unz("datafile.zip", "UCI HAR Dataset/train/y_train.txt"), sep = "", header = F)
subj_train <- read.table(unz("datafile.zip", "UCI HAR Dataset/train/subject_train.txt"), sep = "", header = F)

#add subject and activity label to test dataset
test <- cbind( subj=as.numeric(subj_test$V1),  actv=as.numeric(y_test$V1), x_test)
#add subject and activity label to train dataset
train <- cbind( subj=as.numeric(subj_train$V1),  actv=as.numeric(y_train$V1), x_train)


##STEP1 merge test and train datesets togther
ds <- rbind(test,train)
#add column names from the feature dataset
colnames(ds) <- c("subj","actv", as.character(feature$V2))

#STEP2 Extracts only the measurements on the mean and standard deviation for each measurement.
col <- names(ds)
pickcol <- col[grep("mean\\(|std\\(", col)]
pickcol <- c("subj","actv", pickcol)
ds_scol <- ds[,pickcol]

#STEP3 add activity label
ds_scol <- merge(ds_scol, act_label, by.x = "actv", by.y = "V1", all.x = T)


##STEP4 ppropriately labels the data set with descriptive variable names.
names(ds_scol)<-gsub("Acc", "Accelerometer", names(ds_scol))
names(ds_scol)<-gsub("Gyro", "Gyroscope", names(ds_scol))
names(ds_scol)<-gsub("BodyBody", "Body", names(ds_scol))
names(ds_scol)<-gsub("Mag", "Magnitude", names(ds_scol))
names(ds_scol)<-gsub("^t", "Time", names(ds_scol))
names(ds_scol)<-gsub("^f", "Frequency", names(ds_scol))
names(ds_scol)<-gsub("tBody", "TimeBody", names(ds_scol))
names(ds_scol)<-gsub("-mean()", "Mean", names(ds_scol), ignore.case = TRUE)
names(ds_scol)<-gsub("-std()", "STD", names(ds_scol), ignore.case = TRUE)
names(ds_scol)<-gsub("-freq()", "Frequency", names(ds_scol), ignore.case = TRUE)
names(ds_scol)<-gsub("angle", "Angle", names(ds_scol))
names(ds_scol)<-gsub("gravity", "Gravity", names(ds_scol))

library(dplyr)
ds_scol <- ds_scol %>% rename(subjectId=subj, activityId=actv, activity=V2)


#STEP5 creates a second, independent tidy data set with the average of each variable for each activity and each subject
#split the dataset by subject and activity
split_ds <- split(ds_scol[,3:68], list(ds_scol$subjectId, ds_scol$activityId))
#use sapply to get the mean
tds <- sapply(split_ds, function(x){
        sapply(x, mean, na.rm=T)
} )

#transpose the dataset
tide <- as.data.frame( t(tds))
#rename the variable name to indicate average of each measurement
colnames(tide) <- paste0("Avg", names(tide))

#use rowname to indicate the groupped subject id and activity
group <- rownames(tide)

tide <- cbind(group,tide)

#separte the activity out
library(tidyr)
tide <- tide %>% separate(group, into=c("subjectId", "activityId"))
#merge activity description 
tide <- merge(tide, act_label, by.x = "activityId", by.y = "V1", all.x = T )

tide <- tide %>% select(1:2,69,3:68)  %>% rename(activity=V2)

#write out table 
write.table(tide, "tidy.txt" , row.names = F)