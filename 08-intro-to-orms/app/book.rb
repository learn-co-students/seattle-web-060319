class Book
  attr_reader :id
  attr_accessor :title, :author, :year_published, :publisher

  # @@all = []
  def initialize(id=nil, title, author, year_published, publisher)
    @id = id
    @title = title
    @author = author
    @year_published = year_published
    @publisher = publisher
    @@all << self
  end

  def self.all
    # @@all - NO MORE
    sql = "SELECT * FROM books"
    DB[:conn].execute(sql)
  end

  def self.create_table
    sql = "CREATE TABLE IF NOT EXISTS books (id INTEGER PRIMARY KEY,title TEXT, author TEXT, year_published INTEGER, publisher TEXT)"
    DB[:conn].execute(sql)
  end

  def self.create(title, author, year_published, publisher)
    sql = "INSERT INTO books(title, author, year_published, publisher) VALUES(?,?,?,?)"
    DB[:conn].execute(sql,title, author, year_published, publisher)
  end

  def self.find(author)
    sql = "SELECT title FROM books WHERE author = ?"
    DB[:conn].execute(sql,author)
  end

  def self.drop
    sql = "DROP TABLE IF EXISTS books"
    DB[:conn].execute(sql)
  end

  def self.update(id, title)
    sql = "UPDATE books SET title = ? WHERE id = ?"
    DB[:conn].execute(sql, title, id)
  end

end
