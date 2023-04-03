make1 <- data.frame(name=c('Toyota','Ford','Fiat','Nissan'),
                    country=c('Japan','USA','Italy','Japan'),
                    president=c('Akio Toyoda','William Clay Ford Junior','John Elkann',NA),
                    is_Europe=c(F,F,T,F))

make1

make2 <- data.frame(name=c('Mercedes','Renault','Nissan'),
                    country=c('Germany','France','Japan'),
                    president=c(NA,NA,NA),
                    is_Europe=c(T,T,F))
make2

merge(make1, make2, all = T)
rbind(make1, make2)

union(make1$name, make2$name)
intersect(make1$name, make2$name)
setdiff(make1$name, make2$name)
setequal(make1$name, make2$name)


head_quarter <- data.frame(location=c('Toyota','Dearborn','Torino','Jokohama'))
cbind(make1, head_quarter)
