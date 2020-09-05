data <- read.csv("D:/Datasets/tsunami_dataset.csv")
View(data)
head(data)
dim(data)

mydata <- subset(data, select = c(1:4,9:12,17:19))
mydata <- subset(mydata, mydata$YEAR>2000)
View(mydata)

n <- table(mydata$YEAR)
barplot(n, xlab = "Year", ylab = "Frequency")

n <- table(mydata$REGION)
pie(n)
