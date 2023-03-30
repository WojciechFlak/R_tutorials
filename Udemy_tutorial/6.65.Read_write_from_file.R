data <- read.csv('./Udemy_tutorial/scotch_score.csv')
data
col_names <- c('id','name','region','district','review_point','score')

names(data) <- col_names
head(data)

write.csv(data, './Udemy_tutorial/csv.csv')

install.packages('data.table')
library(data.table)
install.packages('dplyr')
library(dplyr)
currency2019 <- 
  fread('https://www.nbp.pl/kursy/Archiwum/archiwum_tab_a_2019.csv', 
        sep = ';',
        fill = T)
head(currency2019)
tail(currency2019)

currency2019 <- slice(currency2019, 2:(n()-3))
# currency2019 <- currency2019[2:(nrow(currency2019)-4),]
tail(currency2019)


