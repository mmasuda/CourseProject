## run_analysis()
##              
## This function creates a tidy data set for Human Activity Recognition Using Smartphones Dataset
## according to Course project assignment in Getting and Cleaning Data class.
## 1)Merges the training and the test sets to create one data set
## 2)Extracts only the measurements on the mean and standard deviation for each measurement
## 3)Uses descriptive activity names to name the activities in the data set
## 4)Labels the data set with descriptive variable names which are described in Codebook.md 
## 5)Creates a tidy data set with the average of each variable for each activity and each subject
##
## raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## 
## preposition  : Accorging to the instruction, 
##              : this programm assumes the original data locates in working directory and keeps it's directory as below
##              :       ./activity_lables.txt,features.txt 
##              :       ./train/subject_train.txt,X_train.txt,Y_train.txt
##              :       ./test/subject_test.txt,X_test.txt,Y_test.txt
##              :
## argument     : no arguments
##              :
## return       : a tidy data as data frame tidy_data2
##              : provide the average of each variable for each activity and each subject
##              : these variables are extructed only the measurements on the mean and standard deviation for each measurement
##              :
##              : tidy data for 1)-4) in Assignment is also created in this program as tidy_data1.
##              : tidy_data1 is not returned , but you can use it by editing this program. 

run_analysis <- function(){
        
        ## 1) Merges the training and the test sets to create one data set
        x_train <- read.csv ("train/X_train.txt",header=F, sep="", comment.char = "",colClasses="numeric")
        x_test <- read.csv ("test/X_test.txt",header=F, sep="", comment.char = "",colClasses="numeric")
        x_merged <- rbind(x_train,x_test)
        
        ## 2)Extracts only the measurements on the mean and standard deviation for each measurement
        ## 4)and Appropriately labels the data set with descriptive variable names
        
        x_features <- read.csv ("features.txt",header=F, sep="",comment.char = "",colClasses="character") ## use feature.txt
        col_extracted <- sort(c(grep("mean\\(\\)",x_features$V2),grep("std\\(\\)",x_features$V2)))  ## sort by the order in features.txt
 
        for(i in 1:length(col_extracted)){
                z <- data.frame(x_merged[,col_extracted[i]])    ## extruct col of mean() and std() by a vetor "col_extracted"  
                
                ##  label the data set with descriptive variable names(including typo correction)
                ##  convert names line by line to make clear rules        
                
                zname <-  c(feature[col_extracted[i],2])        ## 2 shows the col number for feature name

                zname <- gsub("BodyBody","Body",zname)          ## correct typo          
 
                zname <- gsub("^t","TimeDomain_",zname)      ## show descriptive meaning
                zname <- gsub("^f","FrequencyDomain_",zname)      ## show descriptive meaning                
                zname <- gsub("BodyAccJerk","BodyLinearAcceleration",zname)  ## show descriptive meaning
                zname <- gsub("BodyGyroJerk","AngularVelocity",zname)  ## show descriptive meaning
                zname <- gsub("BodyGyro","Gyroscope",zname)     ## show descriptive meaning
                zname <- gsub("BodyAcc","BodyAcceleration",zname)  ## show descriptive meaning
                zname <- gsub("GravityAcc","GravityAcceleration",zname)  ## show descriptive meaning
                zname <- gsub("-X","_X_axis",zname)              ## show descriptive meaning
                zname <- gsub("-Y","_Y_axis",zname)              ## show descriptive meaning
                zname <- gsub("-Z","_Z_axis",zname)              ## show descriptive meaning
                zname <- gsub("Mag","_in_Magnitude",zname)      ## show descriptive meaning

                zname <- gsub("-mean\\(\\)","_mean",zname)            ## for easy reading  
                zname <- gsub("-std\\(\\)","_std",zname)              ## for easy reading 
        
                names(z) <- zname
                
                if(i == 1){
                        x_tidy        <- z
                }else{
                        x_tidy        <- cbind(x_tidy,z)
                }
        
        }
                
        ## 3)Uses descriptive activity names to name the activities in the data set
        subj_train <- read.csv ("train/subject_train.txt",header=F, sep="", comment.char = "",colClasses="numeric")
        subj_test <- read.csv ("test/subject_test.txt",header=F, sep="", comment.char = "",colClasses="numeric")
        subj_merged <- rbind(subj_train,subj_test)
        
        y_train <- read.csv ("train/Y_train.txt",header=F, sep="", comment.char = "",colClasses="numeric")
        y_test <- read.csv ("test/Y_test.txt",header=F, sep="", comment.char = "",colClasses="numeric")
        y_merged <- rbind(y_train,y_test)
        
        subj_y_tidy <- cbind(subj_merged,y_merged)
        names(subj_y_tidy) <- c("subject_id","activity")   ## should avoid blank for col names
        
        activity_labels <- read.csv ("activity_labels.txt",header=F, sep="",comment.char = "",colClasses="character")
        
        j <- 0
        for(j in 1:nrow(subj_y_tidy)){
                switch(as.numeric(subj_y_tidy[j,"activity"]),
                subj_y_tidy[j,"activity"] <- activity_labels[1,2], ##"WALKING"
                subj_y_tidy[j,"activity"] <- activity_labels[2,2], ##"WALKING_UPSTAIRS",
                subj_y_tidy[j,"activity"] <- activity_labels[3,2], ##"WALKING_DOWNSTAIRS",
                subj_y_tidy[j,"activity"] <- activity_labels[4,2], ##"SITTING",
                subj_y_tidy[j,"activity"] <- activity_labels[5,2], ##"STANDING",
                subj_y_tidy[j,"activity"] <- activity_labels[6,2]) ##"LAYING"     
                ## please make sure that no default case for numeric switch
        }

        
        ## 1)-4) create tidy data set for 1)-4)
        tidy_data1 <- cbind(subj_y_tidy,x_tidy)

        ##      if you want to use 1)-4) data, please use write function below
        ##      write.table(tidy_data1, "tidy_data1.txt", quote=F, col.names=T, append=T,row.names=F)
        
        
        ## 5)Creates a tidy data set with the average of each variable for each activity and each subject

        for(l in 1:nrow(activity_labels)){                      ## loop while number of activity, that is 6
                
                for (m in 1:30){                                ## loop while number of subjects, that is 30
                        zz <- subset(tidy_data1,subject_id == m & activity == activity_labels[l,2]) ## 2 shows the col number for activity name
                        for(n in 3:ncol(tidy_data1)){           ## caluculate mean of each subject and each activity
                                zz[1,n] <- mean(zz[,n])
                        }
                        if(m == 1){
                                zzz <- zz[1,]        
                        }else{
                                zzz <- rbind(zzz, zz[1,])
                        }
                }    
                
                if(l == 1){
                        tidy_data2 <- zzz
                }else{
                        tidy_data2 <- rbind(tidy_data2, zzz)    
                }
        }
                
                rownames(tidy_data2) <- c(1:nrow(tidy_data2))   ## renumbering row
                tidy_data2                                      ## return tidy data for Assignment 5)
}