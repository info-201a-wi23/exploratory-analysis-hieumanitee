
library("dplyr")
#library("stringr")
library("ggplot2")

mental_data <- read.csv("Mental-health-Depression-disorder-Data.csv", stringsAsFactors = FALSE)
View(mental_data)



ggplot(mental_data, aes(x = Anxiety.disorders...., y = Year)) +
  geom_histogram() +
  labs(x = "Year",
      y = "Number of Anxiety Disorder")

ggplot(mental_data, aes(x = Year)) +
  geom_histogram()