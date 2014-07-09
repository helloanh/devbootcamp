#### Solution for Challenge: Database Drill: Intro to SQLite. Started 2014-02-05T03:55:27+00:00

Setting up the terminal...
```sql
Last login: Tue Feb  4 19:09:48 on ttys000
Anhs-MacBook:~ anhkim$ cat << EOF > ~/.sqliterc
> .headers on
> .mode column
> EOF
Anhs-MacBook:~ anhkim$ sqlite3 dummy.db
-- Loading resources from /Users/anhkim/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"

```
Create users table
``` sql
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
```
Adding two user tuples
``` sql
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Jessie', 'Farmers', 'jesse@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:11:19  2014-02-05 03:11:19
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Spock', 'Schn Tgai', 'hey@planetvulcan.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:11:19  2014-02-05 03:11:19
2           Spock       Schn Tgai   hey@planetvulcan.com   2014-02-05 03:12:43  2014-02-05 03:12:43

```
Trying to insert another identical tuple of Jessie Farmers, but I received an error code

``` sql
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Jessie', 'Farmers', 'jesse@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
```

Creating another users table called users2, to test out my theory.
Let's see what happen if we take out UNIQUE in the email VARCHAR(128) column...

``` sql
sqlite> CREATE TABLE users2 (
   ...>  id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>  first_name VARCHAR(64) NOT NULL,
   ...>  last_name  VARCHAR(64) NOT NULL,
   ...>  email VARCHAR(128) NOT NULL,
   ...>  created_at DATETIME NOT NULL,
   ...>  updated_at DATETIME NOT NULL
   ...> );
sqlite> INSERT INTO users2
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Jessie', 'Farmers', 'jesse@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users2
   ...> ;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15
sqlite> INSERT INTO users2
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Jessie', 'Farmers', 'jesse@devbootcamp.com', DATETIME('now'), DATETIME('now'));

```
And it works!  There can be two identical Jessie Farmers with the same email.

``` sql
sqlite> SELECT * FROM users2;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15
2           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:38  2014-02-05 03:17:38

```

Renaming users and adding another column.

``` sql
sqlite> ALTER TABLE users2 RENAME TO updated_users;

sqlite> .schema updated_users

CREATE TABLE "updated_users" (

  id INTEGER PRIMARY KEY AUTOINCREMENT,

  first_name VARCHAR(64) NOT NULL,

  last_name  VARCHAR(64) NOT NULL,

  email VARCHAR(128) NOT NULL,

  created_at DATETIME NOT NULL,

  updated_at DATETIME NOT NULL);

```

Cannot change nicknames column to NOT NULL,
so use DEFAULT ' ' NOT NULL.

``` sql

sqlite> ALTER TABLE updated_users ADD COLUMN nicknames VARCHAR(64) NOT NULL;

Error: Cannot add a NOT NULL column with default value NULL

sqlite> ALTER TABLE updated_users ADD COLUMN nicknames VARCHAR(64) DEFAULT ' ' NOT NULL;


sqlite> .schema updated_users

CREATE TABLE "updated_users" (

  id INTEGER PRIMARY KEY AUTOINCREMENT,

  first_name VARCHAR(64) NOT NULL,

  last_name  VARCHAR(64) NOT NULL,

  email VARCHAR(128) NOT NULL,

  created_at DATETIME NOT NULL,

  updated_at DATETIME NOT NULL,

  nicknames VARCHAR(64) DEFAULT ' ' NOT NULL );

```

Updating last_name, nicknames and updated_at

``` sql

sqlite> UPDATE updated_users SET last_name = 'Farmer' SET nicknames = 'Ninja Coder' SET updated_at = DATETIME('now') WHERE id=3;
Error: near "SET": syntax error

sqlite> UPDATE updated_users SET last_name = 'Farmer' WHERE id = 3;
sqlite> UPDATE updated_users SET nicknames = 'Ninja Coder' WHERE id = 3;
sqlite> UPDATE updated_users SET nicknames = DATETIME('now') WHERE id = 3;
sqlite> SELECT * FROM updated_users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15
2           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:38  2014-02-05 03:17:38
3           Jessie      Farmer      jesse@devbootcamp.com  2014-02-05 03:29:04  2014-02-05 03:29:04  2014-02-05
4           Spock       Schn Tgai   hey@planetvulcan.com   2014-02-05 03:30:19  2014-02-05 03:30:19  pointy ear
sqlite> UPDATE updated_users SET nicknames = 'NinjaCoder' WHERE id = 3;
sqlite> SELECT * FROM updated_users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15
2           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:38  2014-02-05 03:17:38
3           Jessie      Farmer      jesse@devbootcamp.com  2014-02-05 03:29:04  2014-02-05 03:29:04  NinjaCoder
4           Spock       Schn Tgai   hey@planetvulcan.com   2014-02-05 03:30:19  2014-02-05 03:30:19  pointy ear
sqlite> UPDATE updated_users SET updated_ad = DATETIME('now') SET nicknames = 'jigsaw' WHERE id = 4;
Error: near "SET": syntax error
sqlite> UPDATE updated_users SET updated_at = DATETIME('now') WHERE id =4;
sqlite> UPDATE updated_users SET nicknames = 'jigsaw' WHERE id = 4;
sqlite> SELECT * FROM updated_users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15
2           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:38  2014-02-05 03:17:38
3           Jessie      Farmer      jesse@devbootcamp.com  2014-02-05 03:29:04  2014-02-05 03:29:04  NinjaCoder
4           Spock       Schn Tgai   hey@planetvulcan.com   2014-02-05 03:30:19  2014-02-05 03:52:31  jigsaw
sqlite>

```
Some extra code
```sql
sqlite> UPDATE updated_users
   ...> SET age = '20'
   ...> WHERE age = 'N/A';
sqlite> SELECT * FROM updated_users;
id          first_name  last_name   email                  created_at           updated_at           nicknames   age
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------  ----------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15              20
2           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:38  2014-02-05 03:17:38              20
3           Jessie      Farmer      jesse@devbootcamp.com  2014-02-05 03:29:04  2014-02-05 03:29:04  NinjaCoder  20
4           Spock       Schn Tgai   hey@planetvulcan.com   2014-02-05 03:30:19  2014-02-05 03:52:31  jigsaw      20
sqlite> UPDATE * FROM updated_users
   ...> SET updated_at = DATETIME('now') WHERE id = 1 AND id = 2;
Error: near "*": syntax error
sqlite> UPDATE updated_users
   ...> SET updated_at = DATETIME('now') WHERE id = 1 AND id = 2;
sqlite> SELECT * FROM updated_users;
id          first_name  last_name   email                  created_at           updated_at           nicknames   age
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------  ----------
1           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:15  2014-02-05 03:17:15              20
2           Jessie      Farmers     jesse@devbootcamp.com  2014-02-05 03:17:38  2014-02-05 03:17:38              20
3           Jessie      Farmer      jesse@devbootcamp.com  2014-02-05 03:29:04  2014-02-05 03:29:04  NinjaCoder  20
4           Spock       Schn Tgai   hey@planetvulcan.com   2014-02-05 03:30:19  2014-02-05 03:52:31  jigsaw      20
sqlite>

```

Reflections: One of the pet peeve I have with sqlite is its inablility to modify columns after the initial creation of the table.  Although I don't know if this is good practice, but I did something unconventional by cloning users table to take away the UNIQUE function in email column.  I cannot just access that particular column to implement changes.  This is frustrating but it points to some revelation about sqlite and its limitation.

This is from stackoverflow:
"I need to modify a column in a SQLite database but I have to do it programatically due to the database already being in production. From my research I have found that in order to do this I must do the following.

+ Create a new table with new schema
+ Copy data from old table to new table
+ Drop old table
+ Rename new table to old tables name
Source: http://stackoverflow.com/questions/2685885/sqlite-modify-column