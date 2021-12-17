data <- read.csv("./age/ageTable.csv")

summary(data)

#Variables

age <- data$Viewer.age
views <- data$Views....

png(file = "age_pie-chart.jpg")

pie(views, age, col = rainbow(length(views)))

dev.off()

png(file = "age_bar-chart.jpg")

barplot(views,names.arg=age,xlab="ages",ylab="Views",col="blue",
        main="age chart (in %)",border="black")

dev.off()
