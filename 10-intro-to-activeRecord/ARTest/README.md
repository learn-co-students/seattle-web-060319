## Reference Code
```ruby
## Establishing a connection with Active Record.
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/pokemon.db'
)

##Gems to install
gem 'sqlite3'
gem 'pry'
gem 'sinatra-activerecord'
gem 'rake'
gem 'require_all'

## Log SQL Queries that you need to run
ActiveRecord::Base.logger = Logger.new(STDOUT)
```
### Reference Links :
[Migration source](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/create_table)
https://apidock.com/rails/ActiveRecord/Base/find/class
