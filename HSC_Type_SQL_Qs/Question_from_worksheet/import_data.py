# setup access to sqlite3 by importing sqlite3
import sqlite3

# Pull in the csv modules
import csv

# Setup connection to default sqlite3 database
con = sqlite3.connect("sweets.db")
cur = con.cursor()

# Open the text file for reading. We need to set ',' as the delimiter since this is how most files are setup!
# This may need some error checking ...
with open('Category_tbl.txt','r',encoding='utf-8-sig') as f:
    reader = csv.reader(f, delimiter=',')
    for row in reader:
        print(row)
        try:
            cur.execute("INSERT INTO category_tbl (category_id,category_name) VALUES(?,?)", row)
        except sqlite3.Error as error:            
            print("Error inserting value into table.")
print("Committing changes ...")
try:
    con.commit()
except sqlite3.Error as error:
    print("Error doing commit")

print("done. Closing database...")
try:
    con.close()
except sqlite3.Error as error:
    print("Error doing commit")

print("Done")
