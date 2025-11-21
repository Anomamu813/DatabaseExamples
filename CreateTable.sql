create table volcanoes_tbl(
	id INTEGER PRIMARY KEY,
    name CHARFIELD(25),
    type CHARFIELD(8),
    location CHARFIELD(25),
    active BOOLEAN(5),
    last_erupted INTEGER(4),
    image_data BLOB
);
