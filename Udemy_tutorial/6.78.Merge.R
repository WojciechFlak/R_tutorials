make_df <- data.frame(name=c('Toyota','Ford','Fiat','Nissan'),
                      country=c('Japan','USA','Italy','Japan'),
                      president=c('Akio Toyoda','William Clay Ford Junior','John Elkann',NA),
                      is_Europe=c(F,F,T,F))

make_df

brand_df <- data.frame(name=c('Corolla','Auris','Mondeo','Sedicci','Cinquecento','Tipo','Astra'),
                       make=c('Toyota','Toyota','Ford','Fiat','Fiat','Fiat', 'Opel'),
                       available=c(F,T,F,F,F,T,T),
                       mileage=c(56,13,400,30,84,120,10),
                       is_Europe = c(T,T,F,T,T,T,T)
)
brand_df

merge(make_df,brand_df,by.x = 'name', by.y = 'make',all.x = T, all.y = T)
merge(make_df,brand_df,by.x = 'name', by.y = 'make', all = T)

result <- merge(x=make_df, y=brand_df, by.x = 'name', by.y='make', suffixes = c('_make','_brand'))

result[,c('name','name_brand', 'mileage')]
