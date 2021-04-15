#Load Dataset to Work on
library(arules)
data("Groceries")
print(attributes(Groceries))
inspect(head(Groceries,3))
View(Groceries)

#Apply Apriori Algorithm
model<-apriori(data=Groceries, parameter = list(support=0.001, confidence=0.15))
inspect(head(model,3))
