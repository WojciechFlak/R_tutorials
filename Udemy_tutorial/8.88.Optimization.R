airDF <- read.csv('./Udemy_tutorial/datasets/2008.csv')
head(airDF)

dest_JFK <- airDF[airDF$Dest == 'JFK',]
dest_MIA <- airDF[airDF$Dest == 'MIA',]
dest_SEA <- airDF[airDF$Dest == 'SEA',]


start <- Sys.time()
nrow(dest_JFK)
stop <- Sys.time()
stop - start


sum(airDF$Origin == 'JFK' & airDF$Dest == 'MIA')


start <- Sys.time()
sum(airDF$Origin == 'JFK' & airDF$Dest == 'MIA')
stop <- Sys.time()
stop - start

#time difference is way larger due to fact nrow reads all data from columns - inneccesary data computed
start <- Sys.time()
nrow(airDF$Origin == 'JFK' & airDF$Dest == 'MIA')
stop <- Sys.time()
stop - start