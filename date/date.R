data <- read.csv("./date/dateTable.csv")

summary(data)

subscribers <- data$Subscribers
views <- data$Views
watchTime <- data$Watch.time..hours.

png(file = "subscribers_chart.jpg")

plot(subscribers,type = "o",col = "red", xlab = "days", ylab = "subscribers", 
     main = "subscriber")


dev.off()

# Linear Regression

relation <- lm(watchTime~views)
print(summary(relation))


