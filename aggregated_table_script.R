table <- Mental_health_Depression_disorder_Data %>% 
           filter(Year >= 1990) %>% 
           filter(Year <= 2017) %>%
           filter(!Entity == "World")
table <- na.omit(table)
colnames(table) [5] <- "Schizophernia"
colnames(table) [6] <- "Bipolar"
colnames(table) [7] <- "Eating Disorder"
colnames(table) [8] <- "Anxiety"
colnames(table) [9] <- "Drug Use"
colnames(table) [10] <- "Depression"
colnames(table) [11] <- "Alcohol Use"
  
aggregated_table <- table %>%
                       group_by(Year) %>%
                       summarize(schizophrenia_perc = mean(Schizophernia)) 
table2 <- table %>%
            group_by(Year) %>%
            summarize(bipolar_perc = mean(Bipolar)) 
table3 <- table %>%
            group_by(Year) %>%
            summarize(eating_disorder_perc = mean(`Eating Disorder`))  
table4 <- table %>%
             group_by(Year) %>%
             summarize(anxiety_perc = mean(Anxiety)) 
table5 <- table %>%
             group_by(Year) %>%
             summarize(drug_use_perc = mean(`Drug Use`)) 
table6 <- table %>%
             group_by(Year) %>%
             summarize(depression_perc = mean(Depression)) 
table7 <- table %>%
             group_by(Year) %>%
             summarize(alcohol_use_perc = mean(`Alcohol Use`)) 
aggregated_table <- left_join(aggregated_table, table2)

aggregated_table <- left_join(aggregated_table, table3)            

aggregated_table <- left_join(aggregated_table, table4)  

aggregated_table <- left_join(aggregated_table, table5) 

aggregated_table <- left_join(aggregated_table, table6) 

aggregated_table <- left_join(aggregated_table, table7)

aggregated_table <- aggregated_table %>% 
                       mutate_if(is.numeric, round, digits = 4)