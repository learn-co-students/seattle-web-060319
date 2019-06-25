Book.destroy_all

Adapter::GoogleBooks.new("Herman Melville").fetch_books
Adapter::GoogleBooks.new("Brandon Sanderson").fetch_books
