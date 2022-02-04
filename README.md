# MechaCar Statistical Analysis
## Linear Regression to Predict MPG
![](deliverable1.png)
* According to the screenshot from my data above, it can be found that the Vehicle Length and the Ground Clearance provide a non-random amount of variance to the MPG Values
  * This means that these two variables have a p-value of less than 0.05.  This signifies that the variables (Vehicle Length and Ground Clearance) have a significant impact on the MPG of the MechaCar Model.
* According to the data above, it can be found that the slope of linear model is not zero and we can reject our null hypothesis.
  * This is because the p-value of our model is 5.35e-11 This number is is less than our signifance level of 0.05
* It could be said that this model does predict the MPG of the MechaCar Prototypes effectively
  * This is because the R-squared value of the model is 0.7149
  * This means that using this model about 71% of MPG predictions can be made. 
## Summary Statistics on Suspension Coils
* The design specifications for the MechaCar suspension coils say that the variance should not exceed 100 lbs per sq inch.  
![](total_summary.png)
* When looking at the total summary I created above, the variance is at 62.29, which is within the specifications.
* However when looking at the summary by manufacturing lot (below) you can see that manufacturing lot 3's variance is at 170.29, which is well above the specifications at 100.
* Manufacturing lot 3 is also driving up the varaiance for the other 2 manufacturing lots when one just looks at a total summary. 
* Lot 1 has a variance of 0.98 and Lot 2 has a variance of 7.47
![](lot_summary.png)
