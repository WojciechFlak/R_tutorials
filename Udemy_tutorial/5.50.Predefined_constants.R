class(datasets::USAccDeaths)

datasets::USAccDeaths

year1978 <- matrix(datasets::USAccDeaths, nrow = 6)[6,]
year1978

install.packages('DescTools')

names(year1978) <- month.abb
year1978

DescTools::tarot

tarrot_cards <- DescTools::tarot$desc
tarrot_cards <- tarrot_cards[!is.na(tarrot_cards)]
tarrot_cards

numbers <- runif(length(tarrot_cards))
numbers
names(numbers) <-  tarrot_cards
numbers

sort(numbers)
