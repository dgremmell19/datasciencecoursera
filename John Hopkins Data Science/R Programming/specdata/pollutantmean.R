##Pollutant mean will search for the directory on a user's C drive, then set
## to the working directory. Then the mean will be calculated. 
pollutantmean <- function(directory,pollutant,id = 1:332) {
    if(length(grep(directory,getwd()))==0) {
        paths3 <- list.dirs("C:/Users/..");
        setwd(paths3[grep(directory,paths3)]);
        for(i in 1:length(id)) {if(id[i]==id[1]) {
            myfiles2 <- read.csv(paste0(sprintf("%03d",id[i]),".csv"))
        } else {
            myfiles2 <- rbind(myfiles2,read.csv(paste0(sprintf("%03d",id[i]),".csv")))
        }
        };return(mean(myfiles2[,pollutant],na.rm = TRUE))
    } else {
        for(i in 1:length(id)) {if(id[i]==id[1]) 
        {myfiles2 <- read.csv(paste0(sprintf("%03d",id[i]),".csv"))
        } else {
            myfiles2 <- rbind(myfiles2,read.csv(paste0(sprintf("%03d",id[i]),".csv")))
        }
        };return(round(mean(myfiles2[,pollutant],na.rm = TRUE),digits = 3))}}
