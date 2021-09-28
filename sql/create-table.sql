DROP TABLE products;

CREATE TABLE products (
  id bigserial PRIMARY KEY,
  user_id bigint
);

-- seed
INSERT INTO products (user_id) VALUES (1);
