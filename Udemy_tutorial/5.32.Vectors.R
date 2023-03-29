x = as.integer(5)
y = integer(5)

v_1 <- 1:10
v_2 <- v_1 * 10

v_regions <- c('France', 'Spain', 'Germanny')
v_capitals <- c('Paris', 'Madrid', 'Berlin')

v_new <- paste(v_regions, '-', v_capitals)
v_new

mpg_values <- mtcars$mpg
mpg_values

ltr_in_g <-  0.264
km_in_m <- 0.621

lpk <- mpg_values * ltr_in_g / km_in_m
lpk
ltr_100km <- 100 / lpk
ltr_100km
