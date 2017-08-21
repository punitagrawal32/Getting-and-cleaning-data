# Getting-and-cleaning-data
This is the dataset provided by a fitness company, which set fitness meters on the bodies of 30 participants (subjects) within the age limit of 18-48 who performed regular activities like walking, sitting, standing, etc. 
The purpose of this project is to clean the data, and make it suitable for data analysis.

I will be submitting a single R script, which contains all the code for analyzing the data provided by the fitness company. 

-> The first step was to set my working directory and read the 6 text files contained in the 'train' and 'test' folders. 
-> I then merged the train and test datasets column wise first, and then row wise, to get one single merged dataset. 
-> Then read in the features, and only added those features which had the word 'mean' or 'std' in them. Selected those specific columns.
-> Added labels to the activities that were coded as IDs. 
-> Added column names to the 80 columns that were present. 
-> Finally, I grouped the data according to the subjects, and the activities they were performing to get a compact 180 rows dataset. 
  ( 6activities x 30subjects)
  
  I have tried to add relevant comments after every line of code I ran. And have put up the summary of what the code does here. 
There is another script with the actual code, and also a codebook which lays down all the codes that have been usedd in this project. 
  


