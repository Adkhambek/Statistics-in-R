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
hist(comment, main = "Histogram for comments added", breaks = 20, col = "blue", ylab = "users", xlim = c(0,8), xlab = "comments")
hist(share, main = "Histogram for shares", breaks = 20, col = "blue", ylab = "users", xlim = c(0, 150), xlab = "shares")
hist(ceiling(watchTime), main = "Histogram for Watching time", breaks = 20, col = "blue", ylab = "users", xlim = c(10, 50), xlab = "watching time")


#Plot
plot(view, subscriber, ylab = "subscribers", xlab = "views")
plot(watchTime, comment, ylab = "comment", xlab = "watching Time")
plot(view, impressions, ylab = "impression", xlab = "view")

