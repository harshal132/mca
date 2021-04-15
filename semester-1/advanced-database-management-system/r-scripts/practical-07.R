#Install GGPlot library
#install.packages("ggplot2")

#simple Linear Regression
#X = Height #Y =  Weight
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

library(ggplot2)
plot(y,x,col = "blue",main = "Height & Weight Regression",
abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

#Linear Regression Model
model = lm(y~x)
print(model)

print(attributes(model))
cat("coefficient: ",coef(model))
print(coef(model))
residuals(model)
summary(model)
abline(model)
#Predicting values manually y=a+bx
x10<-model$coefficients[[1]]+model$coefficients[[2]]*10
cat("The Value for x10 is ",x10)

#using predict()
a<-data.frame(x=10)
print(a)
pred<-predict(model,a)
cat("Using Predict value of x10 is", pred)
plot(model) #Returns 4 Graphs


