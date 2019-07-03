class Author < ApplicationRecord
  has_many :books

  def count_of_books
    self.books.count
  end
end
