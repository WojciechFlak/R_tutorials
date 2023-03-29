data <- c('Caffe Americano', 'Cafe Latte','Cappuccino','Espresso','Flat white','Macchiato',
          NA,'steamed milk','steamed milk + foamy milk + chocolate',NA,'cream milk','steamed milk',
          'USA','France','Italy','Italy','New Zealand','Italy',
          'Hot','Hot','Medium hot','Hot','Hot','Hot',
          3, 4, 4, 3, 5, 4)

name <- c('Caffe Americano', 'Cafe Latte','Cappuccino','Espresso','Flat white','Macchiato')
ingredients <- c(NA,'steamed milk','steamed milk + foamy milk + chocolate',NA,'cream milk','steamed milk')
country <- c(data[13:18])
temp <- c(data[19:24])
price <- c(data[25:30])

coffee <- data.frame(name = c('Caffe Americano', 'Cafe Latte','Cappuccino','Espresso','Flat white','Macchiato'),
                     ingredients = c(NA,'steamed milk','steamed milk + foamy milk + chocolate',NA,'cream milk','steamed milk'),
                     country = c(data[13:18]),
                     temp = c(data[19:24]),
                     price = c(data[25:30]))
coffee


coffee$name

coffee[1,]
coffee[1:3,]
coffee[3,'ingredients']

coffee[,c('country', 'price')]
coffee[,c(1,5)]
