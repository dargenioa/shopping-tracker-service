CREATE TABLE [IF NOT EXISTS] trips(
    id INTEGER PRIMARY KEY NOT NULL,
    store VARCHAR(50) NOT NULL,
    trip_date VARCHAR(50) NOT NULL,
    amount FLOAT NOT NULL
);

CREATE TABLE [IF NOT EXISTS] items(
    id INTEGER NOT NULL ,
    name VARCHAR(50) NOT NULL,
    quantity INTEGER NOT NULL,
    trip_id INTEGER FOREIGN KEY REFERENCES trips(id)
);
