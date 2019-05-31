menselijkheid_scores_GA<- menselijkheid[which(menselijkheid$assistant == "GA"), ]$score
menselijkheid_scores_GANL <- menselijkheid[which(menselijkheid$assistant == "GA NL"), ]$score
t.test(menselijkheid_scores_GA,menselijkheid_scores_GANL,alternative = "greater", paired = TRUE)
