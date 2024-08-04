import mysql.connector
from mysql.connector import connect, Error
def create_database(database_name,host,user,password):
    connection = None
    try:
        connection = mysql.connector.connect(
            host = 'localhost',
            user = 'root',
            password = 'kiama1996'
        )
        cursor = connection.cursor()
        db_creation_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
        cursor.execute(db_creation_query)
        print('alx_book_store created successfully!')
    except Error as e:
        print(e)
    finally:
        if connection is not None:
            print("Database created successfully.")

if __name__ == "__main__":
    create_database('alx_book_store','localhost','root','kiama1996')
    
