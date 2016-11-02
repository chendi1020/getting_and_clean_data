#Getting and cleaning data Course Project



##Files in this repo

-README.md -
-CodeBook.md 
-run_analysis.R 





###Step 1:

Read all the test and training files: y_test.txt, subject_test.txt and X_test.txt.
Combine the files to a data frame in the form of subjects, labels, the rest of the data.


###Step 2:

Read the features from features.txt and filter it to only leave features that are either means ("mean()") or standard deviations ("std()"). 


###Step 3:

Read the activity labels from activity_labels.txt and replace the numbers with the text.


###Step 4:

Apply the now-good-columnnames to the data frame


###Step 5:

Create a new data frame by finding the mean for each combination of subject and label. It's done by split + sapply function


###Final step:

Write the new tidy set into a text file called tidy.txt.