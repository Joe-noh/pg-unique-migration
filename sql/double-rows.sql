INSERT INTO products (user_id) (
  SELECT ROW_NUMBER() OVER (ORDER BY NULL) + (SELECT COUNT(*) FROM products)
  FROM products GROUP BY id
);
