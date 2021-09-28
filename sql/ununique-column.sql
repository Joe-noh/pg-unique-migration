ALTER TABLE products DROP CONSTRAINT user_id_not_null;
ALTER TABLE products ALTER COLUMN user_id DROP NOT NULL;
