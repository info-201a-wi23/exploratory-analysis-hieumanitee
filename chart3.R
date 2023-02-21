library(ggplot2)
library(dplyr)
library(tidyverse)
mental_data <- read.csv("/Users/hieu/Desktop/info201/exploratory-analysis-hieumanitee/Mental-health-Depression-disorder-Data.csv")

filtered_data <- mental_data %>% 
  filter(Entity %in% c("United States", "England", "Canada", "Vietnam", "Russia", "China", "Australia", "India", "Mexico", "Brazil"),
         Year >= 1990, Year <= 2017)

bar_chart <- ggplot(data = filtered_data, aes(x = Entity, y = Depression...., fill = as.factor(Year))) + 
  geom_col(position = "dodge", width = 0.7) +
  labs(title = "Depression Percentage by Country (1990-2017)",
       x = "Country",
       y = "Depression Percentage",
       fill = "Year") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
