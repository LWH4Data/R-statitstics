library(dplyr)
library(plyr)

outcome <- c(3, 2, 5, 2, 2, 2, 7, 2, 4, 7, 5, 3, 4, 4, 7, 5, 4, 9, 2, 6, 3, 4, 4, 4, 6, 4, 6, 2, 8, 5)
covarience <- c(4, 1, 5, 1, 2, 2, 7, 4, 5, 5, 3, 1, 2, 2, 6, 4, 2, 1, 3, 5, 4, 3, 3, 2, 0, 1, 3, 0, 1, 0)
group <- c(rep(1, 9), rep(2, 8), rep(3, 13))

group <- factor(group, levels = c(1:3), labels = c("Sample.A", "Sample.B", "Sample.C"))

Example <- data.frame(group, covarience, outcome)                  
Example                 

ddply(viagraData, "group", summarize, 
      mean_outcome = mean(outcome),
      sd_outcome = sd(outcome),
      mean_covarience = mean(covarience),
      df_covarience = sd(covarience))
