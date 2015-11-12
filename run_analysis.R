#loading a file using read.table
load_file <- function (file){
  return (read.table(file))
}

#load data set (train or test)
load_data <- function(features, activities, train_or_test){
  
  #loads datasets
  x <- load_file(paste("./UCI HAR Dataset/",train_or_test,"/x_",train_or_test,".txt", sep = ""))
  y <- load_file(paste("./UCI HAR Dataset/",train_or_test,"/y_",train_or_test,".txt", sep = ""))
  subject <- load_file(paste("./UCI HAR Dataset/",train_or_test,"/subject_",train_or_test,".txt", sep = ""))
  
  #renames columns
  names(x) <- features
  #add an new column with activity names to y
  y[,2] = activities[y[,1]]
  names(y) <- c("activity_id", "activity_label")
  names(subject) <- "subject"
  filtered <- grepl("mean|std", features)
  
  return (cbind(as.data.table(subject), y, x[,filtered]))
}

if (!require("data.table")) {
  install.packages("data.table")
}
if (!require("reshape2")) {
  install.packages("reshape2")
}

require("data.table")
require("reshape2")

# Load activity labels
activities <- load_file("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load features
features <- load_file("./UCI HAR Dataset/features.txt")[,2]

test <- load_data(features, activities, "test")
train <- load_data(features, activities, "train")

data = rbind(test, train)

id_labels   = c("subject", "activity_id", "activity_label")
data_labels = setdiff(colnames(data), id_labels)
melt_data      = melt(data, id = id_labels, measure.vars = data_labels)
tidy_data   = dcast(melt_data, subject + activity_label ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt")