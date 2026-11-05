-- +migrate Up
CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

-- +migrate Down
DROP TABLE authors;
