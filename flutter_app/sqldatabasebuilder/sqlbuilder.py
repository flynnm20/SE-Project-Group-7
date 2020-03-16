import sqlite3

conn = sqlite3.connect('bugDatabase.db')

c = conn.cursor()

#c.execute("""CREATE TABLE bugImages(
 #           imageID text NOT NULL PRIMARY KEY UNIQUE ,
  #          timeTaken datetime,
   #         location text,
    #        imageDescription text)""")
