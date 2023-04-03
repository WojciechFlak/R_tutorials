airbnb <- read.csv('./Udemy_tutorial/datasets/new-york-city-airbnb-open-data/AB_NYC_2019.csv')
head(airbnb)


summary(airbnb)
table(airbnb$room_type)
table(airbnb$neighbourhood_group)
plot(table(airbnb$neighbourhood_group))

min_reviews <- 0
max_reviews <- max(airbnb$number_of_reviews) + 99
boxes <- seq(min_reviews, max_reviews, 50)

revievs <- table(cut(airbnb$number_of_reviews, breaks = boxes))
plot(revievs)
revievs
boxes
names(revievs) <- boxes[-1]
names(revievs)
revievs

airbnb$rev_year <- substr(airbnb$last_review, start = 1, stop = 4)
head(airbnb)
table(airbnb$rev_year)

plot(1:10, xaxt = "none")
axis(side = 1, at=1:10, labels=letters[1:10])


agg_by_neigh <- aggregate(airbnb$price, FUN=mean, by = list(airbnb$neighbourhood_group), na.rm=T)
agg_by_neigh
plot(agg_by_neigh$x, xaxt = "none")
axis(side = 1, at=1:length(agg_by_neigh$Group.1), labels=agg_by_neigh$Group.1)


agg_by_roomtype <- aggregate(airbnb$price, FUN=mean, by=list(airbnb$room_type), na.rm=T)
agg_by_roomtype

plot(agg_by_roomtype$x, xaxt='none')
axis(side = 1, at=1:length(agg_by_roomtype$Group.1), labels = agg_by_roomtype$Group.1)
