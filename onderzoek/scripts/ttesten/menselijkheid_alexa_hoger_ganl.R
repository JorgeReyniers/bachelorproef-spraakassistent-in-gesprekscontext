menselijkheid_scores_Alexa<- menselijkheid[which(menselijkheid$assistant == "Alexa"), ]$score
menselijkheid_scores_GANL <- menselijkheid[which(menselijkheid$assistant == "GA NL"), ]$score
t.test(menselijkheid_scores_Alexa,menselijkheid_scores_GANL,alternative = "greater", paired = TRUE)
