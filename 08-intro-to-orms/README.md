# Database:
- Persistence : Even after the life of your program we have data still existing.
- Quick to access.
- Preserves relationships between our data models.
- Sharing of data between users.
- Security : databases are more secure and storing in your program/computer/locally.
# ORMs - Organizing our data/models:
- Object Relational Mapping
- Connects Ruby to SQL to do stuff.
-
```Ruby
class Book  
  title
  author
  year_published
  publisher
```

DB -> library
Tables -> books
Rows -> Instances of a book(hp1, hp2, hp3)
Column -> id, title, year_printed, publisher;

  - ORMS - Object Relationship/Relational Mapping

# CRUD REVIEW
 - Create
   ```SQL
   DB[:conn].execute("CREATE TABLE IF NOT EXISTS books(id INTEGER PRIMARY KEY,title TEXT, author TEXT, year_published INTEGER, publisher TEXT)")
   ```
   ```Ruby
    def self.create_table
      #execute SQL Query for Creating a table.
    end
   ```
   ```SQL
   DB[:conn].execute("INSERT INTO books(title, author, year_published, publisher) VALUES(\"Harry Potter 1\", "JK Rowling",1997, "DK" )")
   ```
   ```Ruby
    def self.create
      #query for inserting instances in our DB.
    end
   ```
 - Read
  ```SQL
    "SELECT * FROM books"
   ```
   ```Ruby
   def self.all
   end
   ```
   ```SQL
   SELECT title FROM books WHERE author = "JK Rowling"
   ```
   ```Ruby
   def self.find(author)
     sql = "SELECT title FROM books WHERE author = ?"
     DB[:conn].execute(sql,author)
   end
   ```
 - Update
    ```SQL
    UPDATE books SET title = "title" WHERE id = 1
    ```  
    ```Ruby
    def self.update(id, title)
      sql = "UPDATE books SET title = ? WHERE id = ?"
      DB[:conn].execute(sql, title, id)
    end
    ```
 - Delete
    ```SQL
    DROP TABLE IF EXISTS  books
    ```  
    ```Ruby
    def self.drop
      sql = "DROP TABLE IF EXISTS books"
      DB[:conn].execute(sql)
    end
# Books/Author

# Intro to ORMs (Object Relational Mappers)

## Reference
```ruby
#Connection string for a database )
DB = {
  conn: SQLite3::Database.new('db/library.db')
}
DB[:conn].results_as_hash = true

#Gems to install
gem "sqlite3"
gem "pry"
```
