#Load Air Passengers Data Set
data(AirPassengers)

#Verify The Dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

#Convert Dataset to Dataframe

ap_df <- data.frame(
  year<- time(AirPassengers), 
  passengers = as.numeric(AirPassengers)
)
ap_df

#Data Frame with Years and months separately 
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

#Basic Plot 
plot(AirPassengers)

#plot with Title, Axis Labels and color
plot(AirPassengers,
     type = 'l',
     main = "Air passengers Trend analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "red"
)

#changing the line width and point cords
plot(AirPassengers,
     type = 'l',
     lwd = 1.5,
     main = "Air passengers Trend analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "red"
)

points(AirPassengers,
       type = 'o',
       pch = 16,
       col = "blue")
grid()
