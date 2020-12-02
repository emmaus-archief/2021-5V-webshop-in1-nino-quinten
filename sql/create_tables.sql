DROP TABLE IF EXISTS sneakers; 
CREATE TABLE sneakers (
  ID SERIAL PRIMARY KEY,
  colorway VARCHAR(15),
  name VARCHAR(255),
  brand TEXT,
  price NUMERIC(10, 2),
  release_date NUMERIC,
  silhouette TEXT,
  style NUMERIC,
);