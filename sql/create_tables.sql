DROP TABLE IF EXISTS products; 

CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  price INTEGER,
  colorway TEXT,
  brand TEXT,
  release_date INTEGER,
  silhouette INTEGER,
  code INTEGER
);

CREATE TABLE schoenkleur (
  ID SERIAL PRIMARY KEY,
  schoenkleur_id INTEGER,
  schoenkleur_name TEXT
);

CREATE TABLE recomended (
  ID SERIAL PRIMARY KEY,
  sneaker_id INTEGER,
  andere_sneaker_id INTEGER
);


CREATE TABLE silhouette_type (
  ID SERIAL PRIMARY KEY,
  silhouette_id INTEGER,
  silhouette_name TEXT
);

