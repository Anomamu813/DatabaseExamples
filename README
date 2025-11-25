
SQL lesson01
############

Objective: 
##########
Create and populate an sqlite3 database with data from the Access DB Volcanoes database.

NOTE: This will only work on a MacBook, Codespaces on GitHub, Linux, FreeBSD. DO NOT attempt it on PowerShell. 
It makes use of the redirect symbol "<" which is standard on the shells in MacBook, Linux, FreeBSD, but is yet to be implemented on Windows PowerShell.

There are three scripts: import_data.py, CreateTable.sql and SelectAll.sql. The first script is in Python and allows you to import a txt file in comma delimited format (so CSV files). The second two scripts are SQL scripts. First one creates a table with the same or similar settings to the famous Volcanoe database. The second script allows you to see what is in the database.

You should ensure you study the scripts. This lesson is just to get you started. 

STEPS
#####
1. Change directory to Lesson01.
	Then do the following.
2. Create an sqlite3 database:
	touch Volcanoes.db 
   This will create a zero byte file. Next you create the table(s) in the database.
3. Create the tables by running the script CreateTable.sql
	sqlite3 Volcanoes.db < CreateTable.sql
   This will create the table(s) with the settings you specify. Next you add data.
4. Check the export file and ensure it is comma delimited.
	1,"Pelee","Violent","Martinique",0,"1932",
	2,"Mauna Loa","Quiet","Hawaii",10,"1984",
	3,"Tarawera","Violent","New Zealand",0,"1886",
5. Run import_data.py:
	python import_data.py
6. Run SelectAll.sql:
	sqlite3 Volcanoes.db < SelectAll.sql

Now you have a populated table in your database.

###################################################

NOTE: that you can merge steps 1 and 2 and just run
	sqlite3 Volcanoes.db < CreateTable.sql
This is good to do when you first start.

Try these queries:
1. SELECT type FROM volcanoes_tbl;

2. SELECT Name,type FROM volcanoes_tbl;

3. SELECT name, last_erupted FROM volcanoes_tbl WHERE last_erupted = 2018;

4. SELECT name, type FROM volcanoes_tbl WHERE type = 'Violent';

5. SELECT name, type FROM volcanoes_tbl WHERE type = 'Violent' AND last_erupted = 2018;

6. SELECT name, type FROM volcanoes_tbl WHERE type = 'Quiet' AND location = 'New Zealand';

Running SQL queries and alternate way

For each of the above, add in the prefix "volcanoes_tbl.<columnname>". For example, question 1 would be:

1. SELECT volcanoes_tbl.type FROM volcanoes_tbl;

2. SELECT volcanoes_tbl.name, volcanoes_tbl.type FROM volcanoes_tbl;

And so on. Redo queries 3-6 in this format.

