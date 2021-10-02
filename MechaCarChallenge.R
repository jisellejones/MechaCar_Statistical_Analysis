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
total_summary <- summarize(suspcoil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# Create a lot_summary dataframe that gruops each manufacturing lot by the mean, median, 
# variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- suspcoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# Create bocplots to visualize data from lot_summary table
plt <- ggplot(suspcoil, aes(x= Manufacturing_Lot, y=PSI))
plt + geom_boxplot()

# Run t-test to determine if the PSI across all manufacturing lots is statistically 
# different from the population mean of 1,500 pounds per square inch

# Show density plot to look for skew - log10 normalizes the data - not sure this
# is necessary for this dataset
plt <- ggplot(suspcoil,aes(x=log10(PSI)))#import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

# Create random sample of PSI data and view density graph
sample_table <- suspcoil %>% sample_n(75) #randomly sample 50 data points
plt2 <- ggplot(sample_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt2 + geom_density() #visualize distribution using density plot

# Run t.test on sample and populaton mean
t.test(suspcoil$PSI, mu=1500)

# Run t.test() comparing lot 1 with mean of 1500
t.test(subset(suspcoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# Run t.test() comparing lot 2 with mean of 1500
t.test(subset(suspcoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# Run t.test() comparing lot 3 with mean of 1500
t.test(subset(suspcoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

