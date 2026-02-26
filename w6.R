#Load & understand Dataset
data(diamonds)

data(packages.packages(all.available=TRUE))

library(ggplot2)

data(diamonds)

str(diamonds)
dim(diamonds)
?diamonds

#Very Basic Scatter

plot(diamonds$carat, diamonds$price)

#Improved Scatter

plot(diamonds$carat, diamonds$price, col=rgb(0,0,1,0,1), pch=16,
main="Scatter Plot: Carat vs Price")

#Hexbin Using Base R
install.packages('hexbin')

library(hexbin)

hb <- hexbin(diamonds$carat, diamonds$price,xbins=40)

plot(hb, main="Hexbin Plot")

#BASIC HEXBIN
ggplot(diamonds,aes(x=carat,y=price))+
  geom_hex()

#Labeled HEXBIN PLOT

ggplot(diamonds, aes(carat, price)) + geom_hex() + 
labs( title = "Hexagon Binning: Diamond Structure",
x = "Carat", y = "Price") + theme_minimal()

#Add color palette (Gradient)
ggplot(diamonds, aes(carat, price)) +
geom_hex(bins=40) +
scale_fill_gradient( low="lightgreen", high ="red") +
theme_minimal()

#Color Meaning :  Light --> fewer Diamonds
# Dark --> Dense Region

#professional Palatte(Viridis)
ggplot(diamonds,aes(carat,price))+geom_hex(bins=35)+scale_fill_viridis_c()+
  theme_minimal()

#Add Legend Title
ggplot(diamonds, aes(carat, price)) + geom_hex(bins=40) +
scale_fill_viridis_c(name = "Count") +
labs( title="Density Structure Of Diamonds", x = "Carat", y = "Price") +
theme_minimal()

#Faceted hexbin
ggplot(diamonds, aes(carat, price)) + geom_hex() + scale_fill_viridis_c() +
facet_wrap(~cut) + theme_minimal()
