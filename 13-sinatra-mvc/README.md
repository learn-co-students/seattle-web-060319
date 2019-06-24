## SWBATs
- [x] Sinatra is a DSL, sits on top of Ruby and Rack to give us extra functionality and abstraction
  - Domain Specific Language
  - Rails -> Rack and Ruby
  - Django -> Python
  - Rspec -> Ruby
  - Cabyabra -> Ruby
  - Angular -> JS
  - React -> JS
- What is Sinatra :
  - Abstracting away the routing processing ( Rack commands).
  - Connects us to the server (Rack is what allows us to do this).
  - Ruby gem. Provides light weight framework to build sites.

- [x] Explain the Model View Controller (MVC) pattern and give an example

- Model - Communicates with the DB. Stores and recieves the data (Kitchen/Chef)
- View - what the user sees(Customer)
- Controller - creates resources and passes the data to the view ( Model -> view) : Middleman

## MVC
- [ ] Explain how web frameworks (like Sinatra) use the MVC pattern and why
- [ ] Define 'convention over configuration'
- [ ] Demonstrate how the params hash changes and where the data comes from
- [ ] Discuss ERB Template
- [ ] Practice file structure in Sinatra
- [ ] Identify the connection between REST and CRUD

### Deliverables
- [x] Create an index for your site that lists all of the existing books.
  - index -> GET : /books
    - Read -> Book.all-> SELECT *
- [x] User should be able to view information about a specific book.
  - Search by specific name
    - Read -> Book.find_by -> SELECT * WHERE = ?
  - /books/:id
    - REST
      - REspresentational State Transfer
  - /books/1
  - /books/2
