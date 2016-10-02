# Code Section 1: Merges the training and the test sets to create one data set. -----------

# Loading the train dataset

train_data <- read.table(file = "UCI HAR Dataset/train/X_train.txt",stringsAsFactors = FALSE,sep = "",header = FALSE)
test_data <- read.table(file = "UCI HAR Dataset/test/X_test.txt",stringsAsFactors = FALSE,sep = "",header = FALSE)

# Combining the train and the test datasets

combined_data <- rbind(train_data,test_data)

# Code Section 2: Extracts only the measurements on the mean and standard deviation. --------

# Load the features.txt
features <- read.table(file = "UCI HAR Dataset/features.txt",stringsAsFactors = FALSE,header = FALSE,sep = "\n")
# Since features are read as a data frame we save the only column in a variable
a_variable <- features[,1]
# Assign the values in object as colnames to combined dataset
colnames(combined_data) <- a_variable
# Extract only mean and std features
extracted_data <- combined_data[,grepl(pattern = "mean\\(\\)|std\\(\\)",x = colnames(combined_data))]

# Code section 3: Uses descriptive activity names to name the activities in the dataset --------

train_label <- read.table(file = "UCI HAR Dataset/train/y_train.txt",header = FALSE,sep = "\n")
test_label <- read.table(file = "UCI HAR Dataset/test/y_test.txt",header = FALSE,sep = "\n")
activity_label <- rbind(train_label,test_label)
extracted_data <- cbind(extracted_data,activity_label)
colnames(extracted_data)[length(extracted_data)] <- "activity"
extracted_data[,length(extracted_data)] <-  ifelse(extracted_data[,length(extracted_data)]==1,"Walking",ifelse(extracted_data[,length(extracted_data)]==2,"Walking Upstairs",ifelse(extracted_data[,length(extracted_data)]==3,"Walking Downstairs",ifelse(extracted_data[,length(extracted_data)]==4,"Sitting",ifelse(extracted_data[,length(extracted_data)]==5,"Standing","Laying")))))

# Combining Subjects with the dataset

train_subject <- read.table(file = "UCI HAR Dataset/train/subject_train.txt",header = FALSE,sep = "\n")
test_subject <- read.table(file = "UCI HAR Dataset/test/subject_test.txt",header = FALSE,sep = "\n")
combined_subjects <- rbind(train_subject,test_subject)
extracted_data <- cbind(extracted_data,combined_subjects)
colnames(extracted_data)[length(extracted_data)] <- "subject"

# Code section 4: Appropriately labels the data set with descriptive variable name --------
# Collect all the column names in a new variable

column_names <- colnames(extracted_data)
# then tidy the vector
# first by removing non-aplhabetic character and convert all to lower case
column_names <- tolower(gsub("[^[:alpha:]]","",column_names))
colnames(extracted_data) <- column_names

# Code section 5: From the data set in step 4, creates a second, independent tidy  --------
# Using aggregate function to create a new data frame
tidy_data <- aggregate(x = extracted_data[,1:(ncol(extracted_data)-2)],by = list(subject = extracted_data$subject,label = extracted_data$activity),mean)

# Save the tidy data in a txt file --------------------------------------

write.table(x = tidy_data,file = "tidy_data.txt",row.names = FALSE)

