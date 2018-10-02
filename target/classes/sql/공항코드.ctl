LOAD DATA                                       
INFILE 'C:\Users\kitri\Desktop\3rdProject\DB\공항코드.csv'
INTO Table airportCode INSERT
FIELDS terminated by ',' 
trailing nullcols 
(code, name)