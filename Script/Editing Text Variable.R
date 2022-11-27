# Downloading the data online
if (!file.exists("/.data.")){dir.create("/.data.")}
file URL <- "https..."
download.file(fileURL, destfile = ".data/cameras.csv", method = "curl")
CameraData <- read.csv('./data/camera.csm')
names(cameraData) # reading the column names of the data


#tolower allows you to make the column names to be lower case
tolower(names(cameraData))

#Fixing character vectors- strsplit()
spliNames = strsplit(names(cameraData), "\\.") #I am basically telling this function to split on the period
splitNames[[5]]

mylist <- list(letters = c("A", "b", "c"), numbers = 1:3, matrix(1:25, ncol = 5))
head(mylist)

mylist[1]

#remove any unwanted character from variables
splitNames[[6]][1]
firstElement <- function(x){x[1]}
sapply(splitNames, firstElement)

#substituting characters within a varible
sub("_","" names(reviews),)

gsub("_","", testName)

#searching for value names
grep("Alameda", cameraData$intersection)

table(grep('Alameda', cameraData$intersection))

cameraData2 <- cameraData[!grep("Alameda", cameraData$intersection),]

grep("Alameda", cameraData$intersection, value = TRUE)

library(stringr)
nchar("Jeffrey Leek")

substr("Jeffrey Leek",1,7)


