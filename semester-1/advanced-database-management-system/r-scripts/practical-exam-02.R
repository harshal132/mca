#Install Reguired Packages
install.packages("titanic")
install.packages("e1071")

#import required libraries
library(titanic)
library(e1071)

#get dataset into titanic
#View Titanic Table Details
titanic = titanic_train
View(head(titanic))

#Exploratory Data Analysis
titanic$PassengerId<-NULL
titanic$Name<-NULL
titanic$Ticket<-NULL
titanic$Cabin<-NULL
titanic$SibSp<-NULL
titanic$Parch<-NULL
titanic$Embarked<-NULL

#View updated table
View(head(titanic))

titanic$Sex<-as.factor(titanic$Sex)
titanic$Survived<-as.factor(titanic$Survived)
head(titanic)

#Replace NA in data set for Age with Average value of Age
avg_age = round(mean(titanic$Age,na.rm = TRUE),0)
titanic$Age <- replace(titanic$Age, is.na(titanic$Age), avg_age)
head(titanic)

#split dataset into Training and Test set
train = titanic[1:650,]
test = titanic[651:891,]

model<-naiveBayes(Survived ~ .,data=train)
model
#test the model
predictions <- predict(model,test)
predictions
#predictions table test
head(cbind(predictions,test))
table(predictions)
table(test$Survived)
