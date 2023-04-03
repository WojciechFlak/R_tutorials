airbnb <- read.csv('./Udemy_tutorial/datasets/new-york-city-airbnb-open-data/AB_NYC_2019.csv')
head(airbnb)

library(jpeg)
map <- readJPEG('./Udemy_tutorial/datasets/new-york-city-airbnb-open-data/New_York_City_.png') 

plot(airbnb$longitude, airbnb$latitude, type = 'n')

rasterImage(map, 
            xleft=min(airbnb$longitude), xright=max(airbnb$longitude), 
            ybottom=min(airbnb$latitude), ytop=max(airbnb$latitude))
grid()
points(x=airbnb$longitude, 
       y=airbnb$latitude, pch = 20, cex = 0.1, col = 'red')


png('./Udemy_tutorial/datasets/new-york-city-airbnb-open-data/New_York_City_3.png',
    width = 600,
    height = 700)

dev.off() #worka in the way like recording what we want to export

