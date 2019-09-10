-- +micrate Up
CREATE TABLE weights (
  id INTEGER NOT NULL PRIMARY KEY,
  pounds FLOAT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS weights;
