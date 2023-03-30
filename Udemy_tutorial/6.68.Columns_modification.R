coffebar <- data.frame(
  name = c('Caffe Americano', 'Cafe Latte','Cappuccino','Espresso','Flat white','Macchiato'),
  ingredients = c(NA,'steamed milk','stemed milk + foamy milk + chocolate',NA,'cream milk','steamed milk'),
  country = c('USA','France','Italy','Italy','New Zealand','Italy'),
  temp = c('Hot','Hot','Medium hot','Hot','Hot','Hot'),
  price = c(3, 4, 4, 3, 5, 4)
)

coffebar
typeof(coffebar['country'])
typeof(coffebar[['country']])
coffebar[['country']]

summary(coffebar)


whiskyDF <- read.csv('./Udemy_tutorial/scotch_score.csv')
summary(whiskyDF)
table(whiskyDF$review.point)

head(whiskyDF)
names(whiskyDF)<- tolower(gsub('[.]', '_', names(whiskyDF)))
whiskyDF
paste(whiskyDF$name, whiskyDF$region, sep = '/')
whiskyDF$origin <- paste(whiskyDF$name, whiskyDF$region, sep = '/')
head(whiskyDF)
whiskyDF$origin <- sub('/high', '' ,whiskyDF$origin, ignore.case = T)
whiskyDF$UpDown <- ifelse(whiskyDF$score >= 0, '+', '-')
head(whiskyDF)
table(whiskyDF$UpDown)
