verstaanbaarheid_scores_GA<- verstaanbaarheid[which(verstaanbaarheid$assistant == "GA"), ]$score
verstaanbaarheid_scores_GANL <- verstaanbaarheid[which(verstaanbaarheid$assistant == "GA NL"), ]$score
t.test(verstaanbaarheid_scores_GA,verstaanbaarheid_scores_GANL,alternative = "greater", paired = TRUE)
