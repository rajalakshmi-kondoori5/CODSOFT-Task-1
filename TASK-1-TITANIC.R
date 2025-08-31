data<-read.csv("C:/Users/kondoori/Downloads/Titanic-Dataset.csv")
str(data)
summary(data)
colSums(is.na(data))
data$Age[is.na(data$Age)]<-median(data$Age,na.rm=TRUE)
data$Survived<-as.factor(data$Survived)
set.seed(123)
train_index<-createDataPartition(data$Survived,p=0.7,list=FALSE)
train_data<-data[train_index,]
test_data<-data[-train_index,]
model<-glm(Survived~Pclass+Sex+Age+SibSp+Parch+Fare+Embarked,data=train_data,family="binomial")
predictions<-predict(model,newdata=test_data,type="response")
predicted_classes<-ifelse(predictions>0.5,1,0)
confusionMatrix(as.factor(predicted_classes),test_data$Survived)
#For plot using ggplot2
ggplot(data,aes(x=Sex,fill=Survived))+geom_bar(position="dodge")+facet_wrap(~Pclass)+labs(title="Survived",x="Gender",y="Count of passengers",fill="Survived")+theme_minimal()
