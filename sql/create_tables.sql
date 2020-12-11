DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  colorway VARCHAR(15),
  name VARCHAR(255),
  brand TEXT,
  price NUMERIC(10, 2),
  release_date NUMERIC,
  silhouette TEXT,
  style NUMERIC,
);