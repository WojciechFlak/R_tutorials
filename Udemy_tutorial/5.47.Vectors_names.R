data <- as.vector(datasets::discoveries)
year <- 1860:1959
data[year]

names(data)
names(data) <- year
names(data)

data[data > 10]
names(data[data > 10])
as.integer(names(data[data > 10]))

war <- 1939:1946
data[as.character(war)]
