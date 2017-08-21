setwd("C:/Users/Punit/Desktop") 
# set working directory
xtrain<- read.table("X_train.txt")
# reading the train data
ytrain<- read.table("y_train.txt")
# reading the training activity id
subtrain<- read.table("subject_train.txt")
# reading the training subjects 
xtest<- read.table("X_test.txt")
# reading the test data 
ytest<- read.table("y_test.txt")
# reading the test activity id 
subtest<- read.table("subject_test.txt")
# reading the test subjects 
ytrain2<- cbind(ytrain, subtrain)
xtrain3<- cbind(xtrain, ytrain2)
ytest2<- cbind(ytest,subtest)
xtest3<- cbind(xtest, ytest2)
merged<- rbind(xtrain3,xtest3)
View(merged)
# merging the training and the testing data sets into a single merged data set (ANSWER 1)
str(merged)
#10299 observations of 563 variables in the merged data set
features<- read.table("features.txt")
View(features)
# reading the names of features. we only need features on the mean or std of the measurements
mean<- grep("mean",features$V2)
length(mean)
# 46 measurements on mean
std<- grep("std",features$V2)
length(std)
# 33 observations on standard deviation
meanstd<- c(mean,std)
meanstd<- sort(meanstd)
length(meanstd)
# only 79 variables out of 561 will be considered
mergedfin<- merged[,meanstd]
View(mergedfin)
str(mergedfin)
# 10299 observation in 79  (ANSWER 2)
labels<- read.table("activity_labels.txt")
View(labels)
# 6 labels in all. we are required to use these labels instead of the number id
dummy<- rbind(ytrain, ytest)
View(dummy)
dummy$labels<- labels$V2[dummy$V1]
# labels contains the actual text like standing, walking etc (ANSWER 3)
mergedfin<- cbind(mergedfin,dummy$labels)
colnames(mergedfin) <- features$V2[meanstd]
# now the column names are the true feature names given in the features list 
mergedfin<- mergedfin[,-80]
label<- dummy$labels
mergedfin<- cbind(mergedfin, label)
# was unable to get the colname for the label variable, so readded it (ANSWER 4)
# now all variables have the actual variable names
data_summary<- mergedfin %>% group_by(subs$V1,label) %>% summarize_all(funs(mean))
# this function gives us the final data in the required format. the data for every subject according to each label is 
# mentioned in the table 'data_summary' (ANSWER 5)

