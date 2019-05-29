levendigheid_scores_GA <- levendigheid[which(levendigheid$assistant == "GA"), ]$score
levendigheid_scores_GANL <- levendigheid[which(levendigheid$assistant == "GA NL"), ]$score
t.test(levendigheid_scores_GA,levendigheid_scores_GANL,alternative = "greater", paired = TRUE)
