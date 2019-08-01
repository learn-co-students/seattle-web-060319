# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


aa = Burger.create(name:"MC Beefy",meat: true,tasty: true, calories:10000)

bb = Burger.create(name:"Veg EH Burger",meat: false,tasty: false, calories:10)

cc = Burger.create(name:"Beef-Tron",meat: true,tasty: true, calories:100000)

dd = Burger.create(name:"Death by Beef",meat: true,tasty: true, calories:10000000000000000)

ee = Fry.create(name:"Waffly",curly: false,sweet_potatoe: false,waffle: true, calories:1)

ff = Fry.create(name:"Curly Bois",curly: true,sweet_potatoe: false,waffle: false, calories:-1)

gg = Fry.create(name:"Sweeties",curly: false,sweet_potatoe: true, waffle: false, calories:-100)