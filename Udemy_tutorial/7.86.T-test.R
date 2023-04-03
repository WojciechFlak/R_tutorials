airbnb <- read.csv('./Udemy_tutorial/datasets/new-york-city-airbnb-open-data/AB_NYC_2019.csv')
bronx_brooklyn <- airbnb[airbnb$neighbourhood_group %in% c('Bronx','Brooklyn'),]
bronx_queens <- airbnb[airbnb$neighbourhood_group %in% c('Bronx','Queens'),]

t.test(bronx_brooklyn$price ~ bronx_brooklyn$neighbourhood_group)
wilcox.test(bronx_brooklyn$price ~ bronx_brooklyn$neighbourhood_group)
#null hypotesis rejected, district does influence the price


t.test(bronx_queens$number_of_reviews ~ bronx_queens$neighbourhood_group)
wilcox.test(bronx_queens$number_of_reviews ~ bronx_queens$neighbourhood_group)
#null hypotesis confirmed, district doesn't influence number of revievs

t.test(bronx_brooklyn$availability_365 ~ bronx_brooklyn$neighbourhood_group)
#null hypotesis rejected, district doesn't influence avaiabliity


tapply(airbnb$price, airbnb$neighbourhood_group, mean)
tapply(airbnb$number_of_reviews, airbnb$neighbourhood_group, mean)
tapply(airbnb$availability_365, airbnb$neighbourhood_group, mean)
