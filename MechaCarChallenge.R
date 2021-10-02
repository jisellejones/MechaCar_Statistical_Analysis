#load dplyr library
library(dplyr)
library(tidyverse)


#Import and read MechaCar_mpg.csv file
MechaCar <- read.csv("Data_Bootcamp_Challenge/Mechacar_mpg.csv")

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) 

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

# Import and read Suspension_Coil.csv
suspcoil <- read.csv("Data_Bootcamp_Challenge/Suspension_Coil.csv")

# Create a total_summary dataframe to get mean, median, and variance
suspcoil_summary <- summarize(suspcoil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') 
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
          