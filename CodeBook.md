##Variables##

* train_data - Contains the training data (Dataframe)
* test_data - Contains the testing data (Dataframe)
* combined_data - Contains the combined data of train_data and test_data (Dataframe)
* features - Contains the features (Dataframe)
* a_variable - Contains the data in column 1 of features (Vector)
* extracted_data - Contains the extracted data that has mean and std features only (Dataframe)
* train_label - Contains activity label for the train_data (Dataframe)
* test_label - Contains activity label for the test_data (Dataframe)
* activity_label - Row bind of train_label and test_label
* train_subject - Contains the subject numbers of each respective row in train_data (Dataframe)
* test_subject - Contains the subject numbers of each respective row in test_data (Dataframe)
* combined_subjects - Row bind on train_subject and test_subject
* column_names - Contains all the column names of extracted_data (Vector)
* tidy_data - Aggregated data by column means and grouped by each activity per subject (Dataframe)

##Data##
* Features are normalized and bounded within [-1,1].
* Each feature vector is a rowin the output csv file.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1	subject\n
2	label\n
3	tbodyaccmeanx
4	tbodyaccmeany
5	tbodyaccmeanz
6	tbodyaccstdx
7	tbodyaccstdy
8	tbodyaccstdz
9	tgravityaccmeanx
10	tgravityaccmeany
11	tgravityaccmeanz
12	tgravityaccstdx
13	tgravityaccstdy
14	tgravityaccstdz
15	tbodyaccjerkmeanx
16	tbodyaccjerkmeany
17	tbodyaccjerkmeanz
18	tbodyaccjerkstdx
19	tbodyaccjerkstdy
20	tbodyaccjerkstdz
21	tbodygyromeanx
22	tbodygyromeany
23	tbodygyromeanz
24	tbodygyrostdx
25	tbodygyrostdy
26	tbodygyrostdz
27	tbodygyrojerkmeanx
28	tbodygyrojerkmeany
29	tbodygyrojerkmeanz
30	tbodygyrojerkstdx
31	tbodygyrojerkstdy
32	tbodygyrojerkstdz
33	tbodyaccmagmean
34	tbodyaccmagstd
35	tgravityaccmagmean
36	tgravityaccmagstd
37	tbodyaccjerkmagmean
38	tbodyaccjerkmagstd
39	tbodygyromagmean
40	tbodygyromagstd
41	tbodygyrojerkmagmean
42	tbodygyrojerkmagstd
43	fbodyaccmeanx
44	fbodyaccmeany
45	fbodyaccmeanz
46	fbodyaccstdx
47	fbodyaccstdy
48	fbodyaccstdz
49	fbodyaccjerkmeanx
50	fbodyaccjerkmeany
51	fbodyaccjerkmeanz
52	fbodyaccjerkstdx
53	fbodyaccjerkstdy
54	fbodyaccjerkstdz
55	fbodygyromeanx
56	fbodygyromeany
57	fbodygyromeanz
58	fbodygyrostdx
59	fbodygyrostdy
60	fbodygyrostdz
61	fbodyaccmagmean
62	fbodyaccmagstd
63	fbodybodyaccjerkmagmean
64	fbodybodyaccjerkmagstd
65	fbodybodygyromagmean
66	fbodybodygyromagstd
67	fbodybodygyrojerkmagmean
68	fbodybodygyrojerkmagstd


The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

##Activity Labels##
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

##Subject Numbers##
1 to 30

##Transformation##
tidy_data.txt is the transformed dataset, of dimensions 180 x 68. The variables are averages of each feature for each activity and each subject.
