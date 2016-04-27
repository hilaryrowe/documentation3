# Interpreting RCA Charts

 When you run the RCA in Sight Machine, it goes through all your data and does regression analysis to set up and select variables.
 
 For example, if you want to study availability on the Carmel - Assembly 1 in the example below, a first pass filter is applied through all the variables in the data set related to the Carmel machine. A lot of that data is highly correlated. Some variables may not vary within the data set. Theory tools and techniques are applied to filter that list of variables. 
 
 
 
 Eight variables display on the RCA chart, but on the Data Tab there may be 50 variables. This first pass filter analyzes and throws out data that is not likely to be a predictor of availability.

Then a regression analysis is run. Regression analysis estimates the links among variables. In the left-hand side chart, the dashed line indicates the cut off to separate variables that are likely and not likely to be significant. Those variables displayed above are likely significant  KPI. Those variables below the line are not likely to be statistically significant indicators of KPI.

At the top of the chart, variables that are good predictor of KPI display. In the example above, the Humidity variable is a good predictor of availability.

On the right-hand side of the display, the top chart displays a gray line that is the "error envelop," or confidence interval. 

The lower chart takes the confidence interval from the top chart and displays as a histogram. The data representation in the data set (humidity) includes shading that gives you more insight on the downtime event (in this example). The lighter the color, the less likely it is that data points at that level of humidity created downtime. The darker shading indicates a highter liklihood that the hmidity created downtime.