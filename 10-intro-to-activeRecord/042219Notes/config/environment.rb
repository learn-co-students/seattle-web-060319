require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/pokemon.db'
  })

require_all './model/'
