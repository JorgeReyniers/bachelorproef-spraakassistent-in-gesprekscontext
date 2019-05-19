attach(coreResultsLong)
mean_sd_scores <- setNames(aggregate(x = score, by=list(eigenschap, assistant), FUN = function(x) c(mean = mean(x), sd = sd(x))),c("eigenschap", "assistant", ""))
mean_sd_scores