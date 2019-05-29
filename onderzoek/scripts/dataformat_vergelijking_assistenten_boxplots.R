#onnodige kolommen strippen
coreResults <- results
coreResults[ ,c(1,4,5,7,8,24,25)] <- list(NULL)

#Hervorming naar lange data: elke score wordt een rij
Library(reshape2)
coreResultsLong <- melt(coreResults, id.vars = c("deelnemerid","geslacht","leeftijd","niveau.begrijpend.engels"))

#Nieuwe kolom ‘assistent’ aanmaken op basis van de annotaties uit kolom ‘variable’
Library(stringr)
coreResultsLong = within(coreResultsLong, {assistant = ifelse(str_sub(coreResultsLong$variable,-2,-1)==".1", "GA", ifelse(str_sub(coreResultsLong$variable,-2,-1)==".2","GA NL", "Alexa"))})

#.1 en .2 annotaties verwijderen uit kolom ‘variable’
coreResultsLong$variable <- gsub('.1', '', coreResultsLong$variable)
coreResultsLong$variable <- gsub('.2', '', coreResultsLong$variable)

#Hernoemen van kolom ‘variable’ en ‘value’
names(coreResultsLong)[5] <- "eigenschap"
names(coreResultsLong)[6] <- "score"

#Tabel bekijken
View(coreResultsLong)
