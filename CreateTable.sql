create table volcanoes_tbl(
    name CHARFIELD(25),
    type CHARFIELD(8),
    location CHARFIELD(25),
    active BOOLEAN(5),
    last_erupted INTEGER(4),
    image BLOB
);