
library("dplyr")
# library("stringr")
library("ggplot2")

mental_data <- read.csv("Mental-health-Depression-disorder-Data.csv", stringsAsFactors = FALSE)
View(mental_data)

countries <- c("United States", "Canada", "China", "Mexico", "Japan", "Russia",
               "India", "Australia", "Australasia", "Brazil")

# Filtering data by year and percentage
mental_data <- mental_data %>%
  filter(Year >= 1990, na.rm = TRUE) %>% 
  filter(Year <= 2017, na.rm = TRUE) %>%
  filter(Entity %in% countries)
View(mental_data)

# Note to self for further filtering in future projects
# filter(Schizophrenia.... <= 100, na.rm = TRUE) %>%
# filter(Bipolar.disorder.... <= 100, na.rm = TRUE) %>%
# filter(Eating.disorders.... <= 100, na.rm = TRUE) %>%
# filter(Schizophrenia.... <= 100, na.rm = TRUE) %>%
# filter(Anxiety.disorders.... <= 100, na.rm = TRUE) %>%
# filter(Drug.use.disorders.... <= 100, na.rm = TRUE) %>%
# filter(Depression.... <= 100, na.rm = TRUE) %>%
# filter(Alcohol.use.disorders.... <= 100, na.rm = TRUE)

# Grouping data via country
mental_data <- mental_data %>%
  group_by(Entity)
View(mental_data)

library("scales")

ggplot(data = mental_data) +
  geom_point(mapping = aes(x = Year,
                 y = Depression....,
                 color = Entity)) +
  labs(title = "Depression Percentages Between 1990-2017 From Ten Countries",
       x = "Year",
       y = "Depression Rates (%)",
       color = "Country")

