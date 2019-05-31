emotionaliteit_scores_Alexa <- emotionaliteit[which(emotionaliteit$assistant == "Alexa"), ]$score
emotionaliteit_scores_GANL <- emotionaliteit[which(emotionaliteit$assistant == "GA NL"), ]$score
t.test(emotionaliteit_scores_Alexa,emotionaliteit_scores_GANL,alternative = "greater", paired = TRUE)
