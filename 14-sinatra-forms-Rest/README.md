## SWBATs
- Review REST
- Review MVC
- Finish Deliverables

### Deliverables
 - [x] **As a site visitor, I should be able to see all of the books in my library**
 - [x] **As a site visitor, I should be able to view a specific book**
 - [ ] **As a site visitor, I should be able to create a new book**
  1. Model : No new models.
  2. Controllers :
    - get => renders a new form
    - post => creates our book
 - [ ] **As a site visitor, update a specific book**
  1. Model : No new models
  2. Controller :
    - get => render an edit form
    - patch => update the record.
 - [ ] **As a site visitor, delete an existing book**
  - Models : No new models
  - Controller Action :
    - get => button in the show page
    - delete => index page
### Routes Summary
 | CRUD | HTTP Verb  | Route  | Action  |  View | Used For |
 |---|---|---|---|---|---|
 |  | |   |   |   |   |
 |  | |   |   |   |   |
 | Read | GET  | '/books'  | books#index  |  index.erb |  displaying information about books  |
 | Read |GET  | '/books/:id'  | books#show  |  show | display information about a specific book  |
 |   | |   |   |   |   |
 |   | |   |   |   |   |
  |   | |   |   |   |   |
   |   | |   |   |   |   |

Reference : arrow &darr;
