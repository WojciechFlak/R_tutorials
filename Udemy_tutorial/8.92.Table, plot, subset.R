origin_JFK <- airDF[airDF$Origin == 'JFK',]
origin_MIA <- airDF[airDF$Origin == 'MIA',]
origin_SEA <- airDF[airDF$Origin == 'SEA',]

table(origin_JFK$UniqueCarrier)
plot(table(origin_JFK$UniqueCarrier))

f_b_c <- table(origin_MIA$UniqueCarrier)

sort(f_b_c)
