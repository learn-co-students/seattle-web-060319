require 'bundler'
Bundler.require

DB = {
  conn: SQLite3::Database.new('library.db')
}
require_relative '../app/book'
#DB[:conn].results_as_hash = true
