#Set Working Directory
getwd()
setwd("F:/Repositories/mca/semester-1/advanced-database-management-system/r-working-directory")

#include required libraries
library(stats)
library(dplyr)
library(ggplot2)

#Code
mydata = select(iris,c(1,2,3,4))
model = kmeans(mydata, 3)
print(model)
print(model$cluster)
print(model$size)
table(model$cluster,iris$Species)

#Plot Graph
model$cluster = as.factor(model$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = model$cluster))+geom_point()
