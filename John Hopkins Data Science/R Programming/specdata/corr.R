corr <- function(directory, threshold = 0) {corr1 <- rep(NA,0);
complete1 <- complete(directory,id = 1:332);
for(i in 1:length(complete1[,1])) {
    if(complete1[i,2]>threshold) { 
        z <- as.integer(as.vector(complete1$id[i]));
        x <- na.omit(read.csv(paste0(sprintf("%03d",z),".csv")));
        corr2 <- cor(x$sulfate,x$nitrate);
        corr1 <- append(corr1,corr2,after = length(corr1))}};
return(corr1)} 