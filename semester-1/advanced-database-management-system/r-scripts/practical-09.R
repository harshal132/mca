#Load Dataset to Work on
library(arules)
data("Adult")
print(attributes(Adult))
inspect(head(Adult,3))
View(Adult)

#Apply Apriori Algorithm
model<-apriori(data=Adult, parameter = list(support=0.07, confidence=0.7))
inspect(head(model,3))

inspect(model[2:10])
