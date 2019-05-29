emotionaliteit_scores_Alexa <- emotionaliteit[which(emotionaliteit$assistant == "Alexa"), ]$score
emotionaliteit_scores_GA <- emotionaliteit[which(emotionaliteit$assistant == "GA"), ]$score
emotionaliteit_scores_GANL <- emotionaliteit[which(emotionaliteit$assistant == "GA NL"), ]$score
levendigheid_scores_Alexa <- levendigheid[which(levendigheid$assistant == "Alexa"), ]$score
levendigheid_scores_GA <- levendigheid[which(levendigheid$assistant == "GA"), ]$score
levendigheid_scores_GANL <- levendigheid[which(levendigheid$assistant == "GA NL"), ]$score
menselijkheid_scores_Alexa<- menselijkheid[which(menselijkheid$assistant == "Alexa"), ]$score
menselijkheid_scores_GA<- menselijkheid[which(menselijkheid$assistant == "GA"), ]$score
menselijkheid_scores_GANL <- menselijkheid[which(menselijkheid$assistant == "GA NL"), ]$score
tempo_scores_Alexa<- tempo[which(tempo$assistant == "Alexa"), ]$score
tempo_scores_GA<- tempo[which(tempo$assistant == "GA"), ]$score
tempo_scores_GANL <- tempo[which(tempo$assistant == "GA NL"), ]$score
verstaanbaarheid_scores_GA<- verstaanbaarheid[which(verstaanbaarheid$assistant == "GA"), ]$score
verstaanbaarheid_scores_GANL <- verstaanbaarheid[which(verstaanbaarheid$assistant == "GA NL"), ]$score