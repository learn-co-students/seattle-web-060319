require 'bundler'
Bundler.require

require_all 'app'

DB = ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
})
