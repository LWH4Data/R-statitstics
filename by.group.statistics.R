#library
library(pastecs)

#set data
iris <- data.frame(iris)
iris

#group statistic by(Variables for which to obtain statistics, group variable, pastecs::stat.desc)
by(iris$Sepal.Length, iris$Species, stat.desc)

#calculate group mean
by(iris$Sepal.Length, iris$Species, mean)
