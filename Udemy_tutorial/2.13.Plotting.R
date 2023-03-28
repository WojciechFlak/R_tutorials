chickwts
plot(x = 1:nrow(chickwts), y = chickwts$weight, xlab = 'Number',
     pch = 8, cex = 3, col = 'seagreen4')

?plot
colors()

plot(x = chickwts$feed, y = chickwts$weight, xlab = 'Number',
     pch = 8, cex = 3, col = 'seagreen4')

my_colors <- c("red", 'yellow', 'green', 'blue', 'violet', 'orange')
my_shapes = (15:20)

color_column <- my_colors[as.numeric(chickwts$feed)]
shapes_column <- my_shapes[as.numeric(chickwts$feed)]

plot(x = 1:nrow(chickwts), y = chickwts$weight,
     xlab = 'Chickens', ylab = "Chicken's weight",
     col = color_column, pch = shapes_column)

legend("topleft", legend = levels(chickwts$feed),
       col = my_colors, pch = my_shapes)

barplot(data = chickwts, height = chickwts$weight,
        xlab = 'Chickens', ylab = "Chicken's weight",
        col = color_column, pch = shapes_column)

ord_chicks <- chickwts[order(chickwts$weight),]
hist(ord_chicks$weight, breaks = 10)

boxplot(weight ~ feed, data = chickwts, varwidth = TRUE, notch = TRUE)

feed_mean <- tapply(chickwts$weight, chickwts$feed, mean)
feed_mean

barplot(feed_mean, horiz = TRUE)





par()
par(mfrow=c(1,3))

plot(x = 1:nrow(chickwts), y = chickwts$weight,
     xlab = 'Chickens', ylab = "Chicken's weight",
     col = color_column, pch = shapes_column)

boxplot(weight ~ feed, data = chickwts, varwidth = TRUE)

barplot(feed_mean, horiz = TRUE)

dev.off()





png('/Users/wojciechflak/Desktop/drop.png', width = 500, height = 500, res = 72)

my_colors <- c("red", 'yellow', 'green', 'blue', 'violet', 'orange')
my_shapes = (15:20)

color_column <- my_colors[as.numeric(chickwts$feed)]
shapes_column <- my_shapes[as.numeric(chickwts$feed)]

plot(x = 1:nrow(chickwts), y = chickwts$weight,
     xlab = 'Chickens', ylab = "Chicken's weight",
     col = color_column, pch = shapes_column)

legend("topleft", legend = levels(chickwts$feed),
       col = my_colors, pch = my_shapes)

dev.off()
