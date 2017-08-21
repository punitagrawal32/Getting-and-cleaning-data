This codebook contains each function used in the cleaning of data, and the function it performs. Please read it in the raw format.

-> xtrain       : reading the data X_train.txt in R. This is the data of all the observations from the machines set on the subjects' bodies.
                  7352 x 561 elements 
-> ytrain       : reading the data y_train.txt in R. This is the activity label ids that each subject was performing when those observations 
                  were made. Varies from 1 to 6 depending on the activity. 7352 x 1 elements
-> subtrain     : reading the data subject_train.txt in R. This contains the subjects off whom the data was collected. Varies from 1 to 30 
                  depending on the subject. 7352 x 1 elements
-> xtest        : same as xtrain, but for the test set. 2947 x 561 elements   
-> ytest        : same as ytrain, but for the test set. 2947 x 1 elements
-> subtest      : same as subtrain, but for the test set. 2947 x 1 elements 
-> ytrain2      : column binding the ytrain and subtrain data frames into a single data frame. Part of data merging. 7352 x 2 elements
-> xtrain3      : column binding the xtrain and ytrain2 data frames to get the entire data for the training set. Part of data merging. 
                  7352x 563 elements in this data frame
-> ytest2       : same as ytrain2 but for the test set. 2947 x 2 elements 
-> xtest3       : same as xtrain3 but for the test set. 2947 x 563 elements
-> merged       : row binding the 2 data frames (xtrain3 and xtest3) to get the final merged data required as answer 1. 
                  10299 x 563 elements 
-> features     : reading the names of all the features or the names of all 561 columns (except the 2 columns- labels and subjectids added in            
                  the end). 561 x 2 elements in this data frame
-> mean         : a vector containing the index numbers of all the variable names which have the word 'mean' in them 
-> std          : a vector containing the index numbers of all the variable names which have the word 'std' in them 
-> meanstd      : combining the values of mean and std into 1 single vector and sorting it in the ascending order 
-> mergedfin    : the dataframe containing only the indexed variables (from meanstd)
-> labels       : a dataframe containing the code of each activity id 
-> dummy        : creating a dummy variable to help me in subsetting values. adding the train and ytest values here 
-> dummy$labels : using the actual labels in the labels data frame to subset and edit values which were numerical, to get descriptive 
                  values of the activity being performed 
-> label        : a vector created to help in naming the column number 80 (descriptive activity)
-> data_summary : final data frame that groups data, first according to the subject, and then accoridng to the activity he is performing
                  and calculating mean.
