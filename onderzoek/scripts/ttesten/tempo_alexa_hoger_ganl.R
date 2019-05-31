tempo_scores_Alexa<- tempo[which(tempo$assistant == "Alexa"), ]$score
tempo_scores_GANL <- tempo[which(tempo$assistant == "GA NL"), ]$score
t.test(tempo_scores_Alexa,tempo_scores_GANL,alternative = "greater", paired = TRUE)
