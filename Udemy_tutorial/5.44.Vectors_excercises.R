f49 <- datasets::AirPassengers[1:12]
f49
f60 <- datasets::AirPassengers[133:144]
f60

f49[6:9]
f49[c(6, 7, 8, 9)]

f60[6:9]/f49[6:9]

f60[12]/f49[12]

mean(f49)

f49[f49 > mean(f49)]

f60[c(1, 2, 11, 12)]

f60[2:(length(f60)-1)]

f60
f60[c(-7,-12)]

#order doesn't matter
f60[-7:-12]
f60[-12:-7]
