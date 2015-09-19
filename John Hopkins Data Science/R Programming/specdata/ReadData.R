files <- list.files(pattern ="*.csv")
for(i in 1:length(files)) {if(files[i]=="001.csv") {
        myfiles2 <- read.csv(files[i],header=TRUE); myfiles3 <- myfiles2} else 
        {myfiles3 <- rbind(myfiles3,read.csv(files[i],header=TRUE))
        }
}
source("pollutantmean.R")
pollutantmean <- function(directory, pollutant, id = 1:332) {
        files2 <- list.files(directory,pattern = "*.csv")
}
if(list.dirs("../specdata") == "../specdata") {
        directory <- "../specdata"
} else if(list.dirs("./specdata") == "./specdata") 
{directory <- "./specdata"
}
list.files(directory,pattern ="*.csv")
paths <- list.dirs("C:/Users/..")
paths[grep("specdata",paths)]
Getdirectory <- function(directory) {paths3 <- list.dirs("C:/Users/..");
paths3[grep(directory,paths3)]}

pollutantmean <- function(directory,pollutant,id = 1:332) {
        paths3 <- list.dirs("C:/Users/..");paths3[grep(directory,paths3)];
        for(i in 1:length(id)) {if(id[i]==id[1]) {
                myfiles2 <- read.csv(paste0(sprintf("%03d",id[i]),".csv"))
                } else {myfiles2 <- rbind(myfiles2,read.csv(paste0(sprintf("%03d",id[i]),".csv")))}};return(mean(myfiles2[,pollutant],na.rm = TRUE))}

complete2 <- function(directory, id = 1:332) {
    if(length(grep(directory,getwd()))==0) {
        paths3 <- list.dirs("C:/Users/..");setwd(paths3[grep(directory,paths3)])};
    for(i in 1:length(id)) {if(id[i]==id[1]) {
        myfiles2 <- na.omit(read.csv(paste0(sprintf("%03d",id[i]),".csv")))
    } else {
        myfiles2 <- rbind(myfiles2,na.omit(read.csv(paste0(sprintf("%03d",id[i]),".csv"))))}};
    numobs <- table(myfiles2[,4]);mydata <- data.frame(numobs,stringsAsFactors = FALSE);
    names(mydata) <- c("id","nobs");return(mydata)
}