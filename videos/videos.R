#Data
data <- read.csv("./videos/videoTable.csv", TRUE, ",")
class(data)
head(data)

#Variables

subscriber <- data$Subscribers.gained
share <- data$Shares
comment <- data$Comments.added
view <- data$Views
watchTime <- data$Watch.time..hours.
impressions <- data$Impressions

#Libraries
install.packages("ggplot2")
library(ggplot2)

#Summary
summary(data)

#Histogram
png(file = "comments_histogram.jpg")
hist(comment, main = "Histogram for comments added", breaks = 20, col = "blue", ylab = "users", xlim = c(0,8), xlab = "comments")
dev.off()

png(file = "shares_histogram.jpg")
hist(share, main = "Histogram for shares", breaks = 20, col = "blue", ylab = "users", xlim = c(0, 150), xlab = "shares")
dev.off()

png(file = "watchingTime_histogram.jpg")
hist(ceiling(watchTime), main = "Histogram for Watching time", breaks = 20, col = "blue", ylab = "users", xlim = c(10, 50), xlab = "watching time")
dev.off()

#Plot
png(file = "plot1.jpg")
plot(view, subscriber, ylab = "subscribers", xlab = "views")
dev.off()

png(file = "plot2.jpg")
plot(watchTime, comment, ylab = "comment", xlab = "watching Time")
dev.off()

png(file = "plot3.jpg")
plot(view, impressions, ylab = "impression", xlab = "view")
dev.off()


