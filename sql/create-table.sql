DROP TABLE products;

CREATE TABLE products (
  id bigserial PRIMARY KEY,
  user_id bigint,
  name varchar(255)
);

-- seed
INSERT INTO products (user_id) VALUES (1);
