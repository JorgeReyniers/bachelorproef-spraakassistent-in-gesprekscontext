texttable <- head(results[,c(2,11,5,14,8,17)], n=30)
#hernoemen kolommen
names(texttable)[1] <- "alexa fainted"
names(texttable)[2] <- "ga fainted"
names(texttable)[3] <- "alexa burn"
names(texttable)[4] <- "ga burn"
names(texttable)[5] <- "alexa backache"
names(texttable)[6] <- "ga backache"
library(formattable)
formattable(texttable)
