data <- c(120, 156, 450, -3, 50)

mean(data)
median(data)
sd(data)
min(data)
max(data)
sum(data)

diff(data)
diff(data, lag = 3)

signif(data, digits = 2)

abs(data)

data <- c(3.14, 5.666, 7.9)

ceiling(data)
floor(data)
round(data, 2)
trunc(data)

seq(0, 100, 10)
rep('x', 5)
class(rep(6, 5))

c1 <- cut(1:100, breaks = 4)
c1
table(c1)

c1 <- cut(1:100, breaks = seq(0, 100, by = 25))
c1
table(c1)

c1 <- cut(1:100, breaks = c(0, 18, 24, 65, 100))
c1
table(c1)






hp <- mtcars$hp
mean(hp)
length(hp)

dev_factor <- (hp - mean(hp))/sd(hp)
dev_factor
round(dev_factor, 0)

cut(hp, breaks = 3)
table(cut(hp, breaks = 3))


c1 <- cut(hp, breaks = c(0,100,150,200, max(hp)))
c1
table(c1)

barplot(table(c1))

sorted_hp <- sort(hp)
plot(sorted_hp)

diffrence <- diff(sorted_hp)
barplot(diffrence, col = 'blue')
