## SWBATs
## Questions :
  - CRUD -> Sinatra
  - Create :
    - ```GET -> '/books/new'```
    - ```POST -> '/books/:id -> '/books'```
  - Read
    - ```GET -> index - '/books'```
    - ```GET -> show - '/books/:id'```
  - Update
    - ```GET -> edit -> '/books/:id/edit'```
    - ```PATCH( or PUT) -> '/books/:id'```
  - Delete
    - ```GET -> delete -> (button) -> show -> '/books/:id'```
    - ```DELETE -> '/books'```

### High-level development practices
 - [ ] Work within a nested file structure for multiple models
    - Conventional view names (index/show/new/edit)
    - Multiple controllers
 - [ ] Test controller actions with Postman
    - Manual redirect
 - [ ] Know which questions to ask when given a new user story
    1. What new model(s) do I need?
       - New class?
       - New migration? (i.e. does the schema need to change?)
       - Associations?
       - Seeds?
    2. What route(s) do I need?
    3. What controller action(s) do I need?
       - In Sinatra, this means the code directly below the route, but in Rails it will be a separate file
    4. What view(s) do I need?

### ActiveRecord associations

 - [ ] Add a new ActiveRecord model and associate it with an existing model
 - [ ] Display information about an associated model.
 - [ ] Allow the user to make a new instance of an ActiveRecord model that belongs to another model

## Deliverables for today's lecture
- [ ] **As a site visitor, I should be able to see a list of authors(For the purpose of this project, an author has many books and a book belongs to one author.)**
  1. What new model(s) do I need?
    - New class : authors
    - New migration? (i.e. does the schema need to  change?)
      - create_authors
      - update book table to author_id
        - change type to integer
        - change author - author_id
    - Associations?
      - author `has_many` :books
      - book `belongs_to` :author
    - Seeds?
      - Seed now takes in an author object
  2. What route(s) do I need?
    - route '/authors'
  3. What controller action(s) do I need?
    - READ -> GET request
  4. What view(s) do I need?
    - index

- [ ] **As a site visitor, I should be able to view a single author.  I should be able to see the author's name and count of books.**
  1. Models?
    - NO : author already exists.
  2. Routes?
    - '/authors/:id'
  3. Controller actions?
    - Read -> GET -> show page
  4. Views?
    - show.erb

- [ ] **As a site visitor, I should be able to create a new book and associate it with an existing author.**
   1. Models?
    - We have book and author already
   2. Routes?
    - all of the routes already exists
    - '/books/new'
   3. Controller actions?
    - Create - >
      - GET
      - POST
      - Just need to edit the current one.
   4. Views?
     - books/new.erb

### Routes Summary
| CRUD | HTTP Verb  | Route  | Action  |  View | UsedFor |
|---|---|---|---|---|---|
| Create |GET&darr; | '/books/new'  | books#new  |'new.erb'  |  form page to create a new book |
| Create | POST | '/books'  |  books#new | Reroutes toindex| Creates a new book in the controller   |
| Read | GET  | '/books'  | books#index  |  index.erb|  displaying information about books  |
| Read |GET  | '/books/:id'  | books#show  |  show |display information about a specific book  |
|  Update | GET&darr; | 'books/:id/edit'  | books#edit| edit.erb  | Renders a form for user to edit  |
|  Update  | PATCH | 'books/:id'  | books#edit  | redirects to show | updates the attributes in aspecific book |
| Delete  | "button" |  - |  - |  form with button in the show page | create a form so we can delete records and map it to an action  |
  |  Delete | Delete |  'books/:id' |  books#delete |  | deletes/destroys a specific book in the DB|

## Resources
1. Writing a migration to rename column and changecolumn type: http://codkal.com/how-rename-databasecolumn-rails-5-migration/
2. HTML form elements: https://www.w3schools.comhtml/html_form_elements.asp
3. Another reference for select in HTML : https:/www.learnhowtoprogram.com/ruby/ruby-databasebasics/select-form-fields-in-sinatra
