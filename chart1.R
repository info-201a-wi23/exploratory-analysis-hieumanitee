
library("dplyr")
# library("stringr")
library("ggplot2")

mental_data <- read.csv("Mental-health-Depression-disorder-Data.csv", stringsAsFactors = FALSE)
View(mental_data)

x_values <- seq(1, 3)
y_values <- seq(1,3)

ggplot() +
  geom_point(aes(x=x_values, y = y_values))