import mysql.connector

connect=mysql.connector.connect(host='localhost',username='root',password='12345',database='Company')
my_cursor=connect.cursor()

my_cursor.execute("select * from Employee_Skills_info") 
                  
for i in my_cursor:
    print(i)




