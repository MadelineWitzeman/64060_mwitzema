# BA-64060-02 Assignment 1
# Madeline Witzeman
# Data Source: https://catalog.data.gov/dataset/real-estate-sales-2001-2018

# Import dataset into R
ds <- read.csv("C:\\Users\\Madeline\\Documents\\Real_Estate_Sales_2001-2020_GL.csv")

# Print descriptive stats for quantitative and categorical variables

install.packages("dplyr")
library(dplyr)

min(ds$Assessed.Value, na.rm=TRUE)
max(ds$Assessed.Value, na.rm=TRUE)
range(ds$Assessed.Value, na.rm=TRUE)
mean(ds$Assessed.Value, na.rm=TRUE)
median(ds$Assessed.Value, na.rm=TRUE)
sd(ds$Assessed.Value, na.rm=TRUE)

min(ds$Sale.Amount, na.rm=TRUE)
max(ds$Sale.Amount, na.rm=TRUE)
range(ds$Sale.Amount, na.rm=TRUE)
mean(ds$Sale.Amount, na.rm=TRUE)
median(ds$Sale.Amount, na.rm=TRUE)
sd(ds$Sale.Amount, na.rm=TRUE)

count(ds, Property.Type)
count(ds, Residential.Type)

table(ds$Residential.Type)
tablepercent <- table(ds$Residential.Type)
prop.table(tablepercent)

# Transform a variable - renaming 'List.Year' variable to 'Year.Listed'

ds = dplyr::rename(ds, Year.Listed = List.Year)
head(ds)

# Plot a quantitative variable, including a scatterplot

plot(ds$Assessed.Value,ds$Sale.Amount, xlab = "Assessed Value ($)", ylab = "Sale Price ($)")

SalePrice <- ds$Sale.Amount
hist(SalePrice, main="Property Sales up to $1M in CT Between 2001-2020", xlab = "Sale Price ($)", breaks = "Scott", xlim = c(1,1000000))
