PostgreSQLにおいて大きなテーブルのカラムをNOT NULLにするとき、SELECTがブロックされないか検証するリポジトリ。

ターミナル2つ開いて

```bash
# terminal 1
$ docker-compose up
```

```bash
# terminal 2
$ ./loop-select.sh
```

を行った上で、さらに別ターミナルで

```bash
# terminal 3
$ psql -U postgres -p 5444 -h localhost -f sql/ununique-column.sql
$ psql -U postgres -p 5444 -h localhost -f sql/unique-column.sql
```

するとSELECTが止まる。

```bash
# terminal 3
$ psql -U postgres -p 5444 -h localhost -f sql/ununique-column.sql
$ psql -U postgres -p 5444 -h localhost -f sql/unique-column-with-constraint.sql
```

なら止まらない。
