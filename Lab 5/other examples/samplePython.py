import sys
import cx_Oracle
con = cx_Oracle.connect('canopus/Mk02199400@gwynne.cs.ualberta.ca:1521/CRS')
con.autocommit = 1
curs = con.cursor()
###############################################################
#ls = [('gg',201),('mm',202),('cc',203)]
#curs.bindarraysize=3
#curs.setinputsizes(30,int)
#curs.executemany('insert into movie(mname,mnum) values(:1,:2)',ls)
##################################################################
curs.execute('select * from movie')
colomns = curs.description
#print(colomns)
print(len(colomns))
for r in colomns:
	print(r)
	print(r[0])

