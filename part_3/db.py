import pymysql.cursors
import bcrypt

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='password',
                             db='workshop')

password = b"our_admin_password"
hashed = bcrypt.hashpw(password, bcrypt.gensalt())

try:
    with connection.cursor() as cursor:
        sql = "INSERT INTO `users` (`username`, `first`, `last`, `email`, `password`) VALUES (%s, %s, %s, %s, %s);"
        cursor.execute(sql, ('aeskilson', 'Alek', 'Eskilson', 'aeskilson@ku.edu', hashed))

        connection.commit()

    with connection.cursor() as cursor:
        sql = "SELECT * FROM `users`"
        cursor.execute(sql)

        result = cursor.fetchone()

        print(result)

finally:
    connection.close()
