
library("dplyr")
#library("stringr")
library("ggplot2")

mental_data <- read.csv("Mental-health-Depression-disorder-Data.csv", stringsAsFactors = FALSE)
View(mental_data)

ggplot(mental_data, aes(x = Anxiety.disorders....)) +
  geom_histogram()

