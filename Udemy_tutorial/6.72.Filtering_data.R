cars <- mtcars
head(cars)
cars$name <- rownames(cars)
head(cars)

cars$cyl == 4
cars[cars$cyl == 4,]

cars$mpg < 20
cars[cars$mpg < 20,]

filter_small <- (cars$mpg > 24) & (cars$cyl == 4)
filter_small

cars$name[filter_small]
cars[filter_small, c('mpg', 'cyl')]
cars[filter_small,]

cars['Fiat 128', 'mpg'] <- NA
filter_small <- (cars$mpg > 24) & (cars$cyl == 4)
cars$name[filter_small]
cars[filter_small, c('mpg', 'cyl')]
cars[filter_small,]

filter_small <- (cars$mpg > 24) & (cars$cyl == 4) & !is.na(cars$mpg) & !is.na(cars$cyl)
cars$name[filter_small]
cars[filter_small, c('mpg', 'cyl')]
cars[filter_small,]


cars[cars$cyl %in% c(6, 8),]
