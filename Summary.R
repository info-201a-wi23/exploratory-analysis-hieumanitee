max_schizophrenia <- list()
max_schizophrenia$value <- aggregated_table %>%
  summarize(highest_perc_schizophrenia = max(schizophrenia_perc, na.rm = T)) %>%
  select(highest_perc_schizophrenia)
print(max_schizophrenia)

min_schizophrenia <- list()
  min_schizophrenia$value <- aggregated_table %>%
    summarize(lowest_perc_schizophrenia = min(schizophrenia_perc, na.rm = T)) %>%
    select(lowest_perc_schizophrenia) 
print(min_schizophrenia)

max_bipolar <- list()
  max_bipolar$value <- aggregated_table %>%
    summarize(highest_perc_bipolar = max(bipolar_perc, na.rm = T)) %>%
    select(highest_perc_bipolar)
print(max_bipolar)

min_bipolar <- list()
min_bipolar$value <- aggregated_table %>%
    summarize(lowest_perc_bipolar = min(bipolar_perc, na.rm = T)) %>%
    select(lowest_perc_bipolar)
print(min_bipolar)

max_anxiety <- list()
max_anxiety$value <- aggregated_table %>%
  summarize(highest_perc_anxiety = max(anxiety_perc, na.rm = T)) %>%
  select(highest_perc_anxiety)
print(max_anxiety)

min_anxiety <- list()
min_anxiety$value <- aggregated_table %>%
  summarize(lowest_perc_anxiety = min(anxiety_perc, na.rm = T)) %>%
  select(lowest_perc_anxiety)
print(min_anxiety)