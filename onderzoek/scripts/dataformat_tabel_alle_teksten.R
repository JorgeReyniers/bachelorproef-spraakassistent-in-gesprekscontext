results[ ,c(1,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38)] <- list(NULL)
texttable <- head(results[,c(2,11,5,14,8,17)], n=30)
#hernoemen kolommen
names(texttable)[1] <- "alexa fainted"
names(texttable)[2] <- "ga fainted"
names(texttable)[3] <- "alexa burn"
names(texttable)[4] <- "ga burn"
names(texttable)[5] <- "alexa backache"
names(texttable)[6] <- "ga backache"
