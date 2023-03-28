x = 2-3i
typeof(x)
y = complex(real = 5, imaginary = 2)
z = 5
typeof(y)
typeof(z)
x+y

t = Sys.time()
typeof(t)

title = 'value'
typeof(title)

t = as.character(t)
typeof(t)

?Quotes
string = 'Col1\tCol2\nTex1\tText2'
print(string)
cat(string)
message(string)
writeLines(string)

print(string, quote = F)
print(string, quote = T)

data = NA
print(data)
print(data, na.print = '---')


x = c(1,2,3)
typeof(x)
x = c(1,2,3,'4')
typeof(x)
print(x)
nchar(x)
nchar(data)
nchar(string)

substr(string, 5, 12)
toupper(string)
R = strsplit(string, '\t')
R[1]

grep('Col', string, value = T)
grepl('col', string)
