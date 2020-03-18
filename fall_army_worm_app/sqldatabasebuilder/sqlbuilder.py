import sqlite3
from datetime import datetime

#c.execute("""CREATE TABLE bugImages(
 #           imageID text NOT NULL PRIMARY KEY UNIQUE ,
  #          timeTaken datetime,
   #         location text,
    #        imageDescription text)""")

'''
For inserting image data into the database, follow the example below.
The actual image should be placed in the assets/images folder
- It should be in the form (image name, addition time, location added from (can be N/A as we're adding them),description of the image)
- Below is a record that I've already added to the database to show a real example. There's 2 records put into a list that are added into the db at the same time.
- Any questions feel free to ask
i.e  records = [('faw-identify.jpg',datetime.now(),'N/A','Simple identification of Fall Army worm'),
           ('Fall-armyworm-fawchart.jpg',datetime.now(),'N/A','More Advanced identification of insect')]
'''
def insertRecord(records):
    print('Here')
    try:
        sqliteConnection = sqlite3.connect('bugDatabase.db')
        cursor = sqliteConnection.cursor()
        print("Connected to SQLite")

        sqlite_insert_query = """INSERT INTO bugImages
                                  (imageID, timeTaken, location, imageDescription) 
                                  VALUES (?, ?, ?, ?);"""

        cursor.executemany(sqlite_insert_query, records)
        sqliteConnection.commit()
        print("Total", cursor.rowcount, "Records inserted successfully into BugImages table")
        sqliteConnection.commit()
        cursor.close()

    except sqlite3.Error as error:
        print("Failed to insert multiple records into sqlite table", error)
    finally:
        if (sqliteConnection):
            sqliteConnection.close()
            print("The SQLite connection is closed")

def getRecords():
    try:
        sqliteConnection = sqlite3.connect('bugDatabase.db')
        cursor = sqliteConnection.cursor()
        print("Connected to SQLite")
        sqlite_select_query = """SELECT * FROM bugImages;"""

        cursor.execute(sqlite_select_query)
        records = cursor.fetchall()

        for row in records:
            print(row)
    except sqlite3.Error as error:
        print("Failed to insert multiple records into sqlite table", error)


records = []
''' Uncomment insertRecord() if you wish to add data into the database placed in the records variable. Look above for how to place data'''
#insertRecord(records)
''' Uncomment if you wanna check if your data is in the database'''
getRecords()