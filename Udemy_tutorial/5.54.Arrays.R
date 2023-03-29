data <- c(
  'E-Tron', 'A7 Sportback S', 'Electric', '2.0 TDI Diesel','402', '201', '5.5', '6.8', '490', '496',
  'i8', '7-Series', 'Petrol/Electric/Hybrid', '725d Diesel', '356', '227', '4.3',  '6.7', '468', '509',
  'Leaf', 'NV200', 'Electric', 'Electric', '147', '107',  '8.3', '13.6','449',  '456')

data
cars <- array(data = data, dim = c(2,5,3))
cars
dimnames(cars)[[2]] <- c('Model', 'Engine', 'Power', '0-60mph', 'Length')
dimnames(cars)[[2]]
cars

dimnames(cars)[[3]] <- c('Audi', 'BMW', 'Nissan')
cars

cars[,'Model',]
cars[,'Engine','Nissan']
cars[,,'Nissan']

cars2 <- array(data, dim = c(2,5,3),
               dimnames = list(NULL, 
                               c('Model', 'Engine', 'Power', '0-60mph', 'Length'),
                               c('Audi', 'BMW', 'Nissan')))
cars2
