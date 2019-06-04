#Respenting data
#Variable, classes, numbers, strings, booleans.
#Floats.

# Hashketball;
# Keys, variables, symbols
# key : symbol - makes a key static, never changes
# key : also can be "string"
# {"home" => [], "away" => [] }
# Arrays.
require 'pry'
# return names : use map to get names.

class Pet
attr_accessor :name, :owner, :breed, :species, :color, :age
# Best Practices :
# 1. Write a reader
# 2. If you want to edit add an accesor
# attr_reader :name, :owner, :breed, :species, :color, :age
  @@all = []
  def initialize(name, owner, breed, species, color, age)
    @name = name
    @owner = owner
    @breed = breed
    @species = species
    @color = color
    @age = age
    @@all << self
    # binding.pry
  end

  def walk
    puts "The #{@breed} is walking"
  end

  def bark
    puts "woof"
  end

  def self.all
    @@all
  end

  # def name
  #   @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end

end
p1 = Pet.new("Kesa", "John", "Golden Reteriever", "Canis Lupus Familiaris", "Golden", 2 )
p2 = Pet.new("Gib", "John", "Golden Reteriever", "Canis Lupus Familiaris", "Golden", 2 )
p3 = Pet.new("GeckoGuy", "John", "Golden Reteriever", "Canis Lupus Familiaris", "Golden", 2 )
p4 = Pet.new("Mishap", "John", "Golden Reteriever", "Canis Lupus Familiaris", "Golden", 2 )
names = [p1, p2, p3].map{ |person| person.name }



# get.chomp(name, owner)
# p5 = Pet.new(name, owner)

# arr1 = [{
#   name: "Kesa",
#   owner: "John",
#   breed: "Golden Retriever",
#   species: "Canis Lupus Familiaris",
#   color: "Golden",
#   age: 2
# },
# {
#   name: "Gib",
#   owner: "Dex",
#   breed: "Bug",
#   species: "Canis Lupus Familiaris",
#   color: "Brindle",
#   age: 6
# },
# {
#   name: "GeckoGuy",
#   owner: "Philip",
#   breed: "Lepeord Gecko",
#   species: "Gecko",
#   color: "Lepeord spotted",
#   age: 5
# },
# {
#   name: "Mishap",
#   owner: "Claire",
#   breed: "Domestic Short Hair",
#   species: "Catius Lupis",
#   color: "Gray Tuxedo",
#   age: 1
# }]

binding.pry
0
