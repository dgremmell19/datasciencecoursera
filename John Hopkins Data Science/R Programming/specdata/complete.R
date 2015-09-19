## Complete will find the directory on a C drive and return the count of the
## complete data sets. 
complete <- function(directory, id = 1:332) {count <- rep(NA,0);
if(length(grep(directory,getwd()))==0) {
    paths3 <- list.dirs("C:/Users/..");setwd(paths3[grep(directory,paths3)])};
for(i in 1:length(id)) {if(id[i]==id[1]) {
    myfiles2 <- na.omit(read.csv(paste0(sprintf("%03d",id[i]),".csv")))
} else {
    myfiles2 <- rbind(myfiles2,na.omit(read.csv(paste0(sprintf("%03d",id[i]),".csv"))))};
    numobs <- sum(complete.cases(subset(myfiles2,ID==id[i])));
    count <- append(count,numobs,length(count))}; 
mydata <- data.frame(id,count,stringsAsFactors = FALSE);
names(mydata) <- c("id","nobs");return(mydata)
}