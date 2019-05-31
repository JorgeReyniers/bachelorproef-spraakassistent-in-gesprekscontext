levendigheid_scores_Alexa <- levendigheid[which(levendigheid$assistant == "Alexa"), ]$score
levendigheid_scores_GANL <- levendigheid[which(levendigheid$assistant == "GA NL"), ]$score
t.test(levendigheid_scores_Alexa,levendigheid_scores_GANL,alternative = "greater", paired = TRUE)
