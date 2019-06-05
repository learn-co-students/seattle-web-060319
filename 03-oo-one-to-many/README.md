
## Review :
  - { key : value}
  - Object are going be better used.
# One to Many Relationships

## SWBATs
* [ ] Implement one object to many objects relationship.
   - Cohort-060319 : `has_many` students (16 students)
   @@all = [<Student Object>, <OBJ>, <OBJ>]
   - Students `belongs_to` cohort
  * [ ] One object `has many` objects.
  * [ ] One object `belongs to` another object.
* [ ] Practice passing custom objects as arguments to methods
* [ ] Demonstrate single source of truth
* [ ] Infer type of method (class or instance) through naming conventions
* [ ] Model/Domain.

## Questions??????
  - When is the code challenge? We will announce Friday during Feelings.
  - `self` - what is it?

## Deliverables
* Create a User class. The class should have these methods:
  * [ ] `initialize` which takes a username and have
  * [ ]  a reader method for the username
  * [ ] `tweets` that returns an array of Tweet instances
  * [ ] `post_tweet` that take a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * [ ] Have a mini breakout and see which methods would be instance vs class.
  * [ ] Tweet has a method `message` that returns a string
    - string message
  * [ ] `user` that returns an instance of the user class
  * [ ] `all` that returns all the Tweets created
  * [ ] `username` that returns the username of the tweet's user
