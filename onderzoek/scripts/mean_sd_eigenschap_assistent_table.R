attach(coreResultsLong)
mean_sd_scores <- setNames(aggregate(x = score, by=list(eigenschap, assistant), FUN = function(x) c(mean = mean(x), sd = sd(x))),c("eigenschap", "assistant", ""))
mean_sd_scores
mean_sd_scores_ordered <- mean_sd_scores[order(-mean_sd_scores$mean),]
library(formattable)
formattable(mean_sd_scores_ordered)
