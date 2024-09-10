getwd()
setwd("C:/Users/MTH/Downloads/worksheet-11-trivialbutsignificant-main/worksheet-11-trivialbutsignificant-main")
library(tidyverse)
library(rvest)
file  <- read.csv("C:/Users/MTH/Downloads/worksheet-11-trivialbutsignificant-main/worksheet-11-trivialbutsignificant-main/movie_unweighted.csv")
head(file)
str(file)
hist(file$ratings, xlab = "Ratings", main = "Histogram of Ratings", col = "White")
hist(file$unweighted)
file[,,'unweighted']
par(mfrow = c(1,2))
hist(file$ratings, xlab = "Rating", main = "Histogram of Ratings")
hist(file$unweighted, xlab = "Unweighted Ratings", main = "Hisogram of Unweighted Ratings")
summary(file)
var(file$ratings)
var(file$unweighted)
par(mfrow = c(1,2))
boxplot(file$ratings,
        xlab = "Rating",
        main = "Boxplot",
        horizontal=FALSE)
boxplot(file$unweighted,
        xlab = "Rating",
        main = "Boxplot",
        horizontal=FALSE)

?par()
?boxplot
