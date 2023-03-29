companies <- c('Expedia','Priceline','American Express')

earnings <- c(50.4, 50.3, 29.9)

founded <- c(1966, 1997, NA)

employees <- c(22.6, 24.5, 12)

travel_info <- list(companies, earnings, founded, employees)
travel_info
travel_info[[2]]

typeof(travel_info)

travel_info[[3]]

names(travel_info) <- c('companies', 'earnings', 'founded', 'employees')
travel_info
travel_info$employees
travel_info['employees']
travel_info[['employees']]

typeof(travel_info$employees)
typeof(travel_info['employees'])
typeof(travel_info[['employees']])

travel_info$earnings / travel_info$employees
