LOAD DATA                                       
INFILE 'C:\Users\kitri\Desktop\3rdProject\DB\항공사코드.csv'
INTO Table airlineCode INSERT
FIELDS terminated by ',' 
trailing nullcols 
(latacode,lcaocode, name)