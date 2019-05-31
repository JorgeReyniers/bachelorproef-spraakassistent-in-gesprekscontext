tempo_scores_GA<- tempo[which(tempo$assistant == "GA"), ]$score
tempo_scores_Alexa <- tempo[which(tempo$assistant == "Alexa"), ]$score
t.test(tempo_scores_GA,tempo_scores_Alexa,alternative = "greater", paired = TRUE)
