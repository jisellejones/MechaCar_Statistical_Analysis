# MechaCar_Statistical_Analysis

## Purpose

The purpose of this analysis is to help AutosRU (an imaginary company) identify variables in production are hindering the manufacturing team's progress in developing their newest prototype, the MechaCar. In this anlyasis, we review production data for insights that may help the manufacturing team.

The analysis consists of the following:
- Multiple linear regression to predict mpg of MechaCar prototypes
- Summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- T-tests to determine if the manufacturing lots are statistically different from the mean population
- The design for a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Deliverable 1: Multiple Linear Regression to Predict MPG

### Results of deliverable 1

<p align="center">Results of Multiple Linear Regression</p>

<p align="center"><img class="centerImage" src="https://github.com/jisellejones/MechaCar_Statistical_Analysis/blob/main/Images/deliverable1_multiple_linear_regression.png" width="500" height="300" alt="Results of Multiple Linear Regression" /></p>

## Results Summary for deliverable 1
- Accoring to the results, the vehicle weight and ground clearance (as well as intercept) provided a non-random amount of variance to the mpg values in the dataset. This suggests that vehicle weight and ground clearance have a significant effect on the mpg. Due to the significant intercept, we may want to consider scaling or tranforming the data. There may also be other variables we haven't considered that we may need to include in the data.
- The slope of our linear model is not 0 as the p-value is 5.35e-11, which far less than our assumed significance level of 0.05%. There is sufficient evidence to reject the null hypothesis.
- The linear model seems to predict the mpg of MechaCar prototypes with about 71% confidence as the R-squared value was 0.7149; however, as stated earlier, due to the significant intercept, we may want to transform the data and re-run the analysis or consider other variables and inclue them in the analysis.

## Deliverable 2: Summary Statistics on Suspension Coils

## Question asked for deliverable 2 analysis
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- When we consider the total number of suspension coils form all lots the variance does not exceed 100 pounds per square inch as can be seen from the summary table for all lots; however, the variance is 67 pounds per square inch and the standard deviation seems higher than expected at 7.89. 

<p align="center">Summary Table for All Lots</p>

<p align="center"><img class="centerImage" src="https://github.com/jisellejones/MechaCar_Statistical_Analysis/blob/main/Images/deliverable2_PSI_total_summary.png" width="552" height="108" alt="Summary Data Table for All Lots" /></p>

- When considering each lot individually, we see an exaggerated variance in lot 3 of 170 PSI with a standard deviation of 13.04 as can be seen in the "Summary Table for Individual Lots".

<p align="center">Summary Table for Individual Lots</p>

<p align="center"><img class="centerImage" src="https://github.com/jisellejones/MechaCar_Statistical_Analysis/blob/main/Images/deliverable2_PSI_lot_summary.png" width="500" height="112" alt="Summary Table for Individual Lots" /></p>

## Results
The tables 

## Deliverable 3: T-Test on Suspension Coils

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
