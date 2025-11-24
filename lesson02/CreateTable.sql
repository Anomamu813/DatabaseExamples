-- Script to create a table. Change as you wish.
--create table category_tbl(
-- category_id INTEGER PRIMARY KEY,
-- category_name CHARFIELD(25)
--);

create table sweet_tbl(
 sweet_id INTEGER PRIMARY KEY,
 sweet_name CHARFIELD(25),
 bag_weight INTEGER,
 price INTEGER,
 image BLOB,
 category_id INTEGER REFERENCES category_tbl(category_id)
);
