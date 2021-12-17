data <- read.csv("./age/ageTable.csv")

summary(data)

#Variables

age <- data$Viewer.age
views <- data$Views....

pie(views, age, col = rainbow(length(views)))
barplot(views,names.arg=age,xlab="ages",ylab="Views",col="blue",
        main="age chart (in %)",border="black")
