DROP TABLE IF EXISTS products; 
/*CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  colorway TEXT,
  name TEXT,
  brand TEXT,
  price INTEGER,
  release_date INTEGER,
  silhouette TEXT,
  style INTEGER,
  description TEXT,
);*/

CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  price INTEGER,
  colorway TEXT,
  brand TEXT,
  release_date INTEGER,
  silhouette TEXT,
  code INTEGER
);

/* kan style als code, misschien , die staat al in het systeem*/

/*CREATE TABLE reccomended (
  ID SERIAL PRIMARY KEY,
  sneaker_id INTEGER,
);

/* eventueel tabellen waarvan ik nog niet weet hoe je de inhoud moet toevoegen aan de andere tabel
in ieder geval de TEXT van de products tabel aanpassen met INTEGER

naam lijkt niet handig voor tabel

CREATE TABLE schoennaam (
  ID SERIAL PRIMARY KEY,
  schoen_id TEXT,
);

de rest misschien wel

CREATE TABLE schoenkleur (
  ID SERIAL PRIMARY KEY,
  kleurnaam TEXT,
);

CREATE TABLE silhouette_type (
  ID SERIAL PRIMARY KEY,
  silhouette_name TEXT,
);

s