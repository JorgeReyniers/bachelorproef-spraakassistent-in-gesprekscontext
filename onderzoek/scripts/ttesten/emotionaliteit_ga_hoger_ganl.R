emotionaliteit_scores_GA <- emotionaliteit[which(emotionaliteit$assistant == "GA"), ]$score
emotionaliteit_scores_GANL <- emotionaliteit[which(emotionaliteit$assistant == "GA NL"), ]$score
t.test(emotionaliteit_scores_GA,ttest_scores_GANL,alternative = "greater", paired = TRUE)
