https://youtu.be/h6JLEfhDCSA (Missing Sound)
https://www.youtube.com/watch?v=o5QP9OBfJ30 
Hashketball Review
==================

## SWBAT (Intro)

* Get the lecture code via git
* Begin formulating their own **process** and do things like:
  * Follow the flow of code
  * Check data types
  * Test assumptions
    * What do you expect?
    * What do you get?
  * Debugging techniques:
    * `pry`
    * `puts`
  * Learn via playing with code
* Begin learning how to test their own code

**Summary**

* Use `puts` to help understand code flow / program execution
* Use `.class` to check data types
* Understand what can be done to different data types
  * (ex: can't add a number to an array)
* Use `pry` to investigate the code
  * If you `pry` above the code, it won't exist!
  * If you `pry` after an error, you'll never hit the `pry`
* Googling, reading docs, playing with code to understand it.


## Objectives (Hashketball)

* Distinguish between data types in Ruby
* Show how to look up documentation for data types in Ruby
* Demonstrate the use of common Array methods
  * `#each` => do something on every value in the array; always returns the original array
  * `#map`
  * `#find` => finds things in an array; always returns some thing (either the found value or nil)
* Differentiate array methods by their respective return values
* Define the Single Responsibility Principle
* Employ test-driven development best practices in their labs
  * `rspec --fail-fast` handle one error at a time
  * Red, Green, Refactor
  * Make it work (shameless green), make it right, make it fast


## Bonus Questions:

Define methods to return the answer to the following questions:

Which player has the most points? Call the method most_points_scored.

Which team has the most points? Call the method winning_team.

Which player has the longest name? Call the method player_with_longest_name.

## Super Bonus:

Write a method that returns true if the player with the longest name had the most steals. Call the method long_name_steals_a_ton?.

