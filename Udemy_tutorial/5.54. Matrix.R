datasets::USAccDeaths
v <- as.vector(datasets::USAccDeaths)
v <- matrix(v, ncol = 12, byrow = T)
v
colnames(v) <- month.abb
rownames(v) <- 1973:1978
v

v['1975',]
v[,'Sep']
v['1976', 'Oct']

v[c('1976', '1977'), c('Jan', 'Feb')]


colnames(v) <- NULL
v
rownames(v) <- NULL
v
unname(v)
v
