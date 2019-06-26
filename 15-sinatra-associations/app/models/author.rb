class Author < ActiveRecord::Base
  has_many :books

  def total_books
    self.books.length
  end
end
