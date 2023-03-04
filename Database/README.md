# Database Configuration and Use

### Using Postgre SQL from the terminal

```sql
psql -h localhost -U [Username] -d [DatabaseName]
```

Basically you run this command with the appropriate information from the vscode terminal

### Execute the DDL

To execute the DDL first you need to change directory(cd command) to the schema directory and then execute the file using the following command:

```sql
\i primary.sql
```
Make sure you are logged in to the postgres command line before executing the aforementioned command. Also make sure you execute the trigger tables
```sql
\i triggerTables.sql
```

### To use Postgre SQL in php

Follow these steps to install the pgsql extension:

1) If you're using Linux, you can install it via the package manager. For example, on Ubuntu, you can run sudo apt-get install php-pgsql.

2) If you're using Windows, you can enable it in your php.ini file by uncommenting the line extension=php_pgsql.dll (remove the semicolon).

### Steps to use Postgre SQL in php

Connect to the PostgreSQL server using pg_connect() function:
```php
$conn = pg_connect("host=localhost dbname=[database name] user=[username] password=[password]");

```

Execute SQL queries using pg_query() function:
```php
$result = pg_query($conn, "SELECT * FROM [mytable]");
```

Retrieve data using pg_fetch_assoc() function:
```php
while ($row = pg_fetch_assoc($result)) {
    echo $row['[column1]'] . ' ' . $row['[column2]'] . '<br>';
}
```

Execute the function using pg_query_params() function:

```php
$result = pg_query_params($conn, 'SELECT [function_name]($1, $2)', array(10, 'hello'));
```

This example executes the [function_name] function with the parameters 10 and 'hello'. The $1 and $2 placeholders in the SQL query are replaced by the values in the second parameter of pg_query_params(). $result will contain the result of the query which you can apply pg_fetch_assoc() upon

Close the connection using pg_close() function:
```php
pg_close($conn);
```

Later I would be implementing a class to deal with all of this but for now use this.






