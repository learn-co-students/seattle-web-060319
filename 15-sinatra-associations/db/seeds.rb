Book.destroy_all

GoogleBooks::Adapter.new("Herman Melville").fetch_books
GoogleBooks::Adapter.new("Brandon Sanderson").fetch_books
