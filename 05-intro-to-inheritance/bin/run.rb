require_relative '../config/environment'

cat = Cat.new("Garfield")
dog = Dog.new("Fido")
nemo = Fish.new("Nemo")

puts cat, dog, nemo
puts

puts CEO.new.bonus(43, 99)
puts NotCEO.new.bonus(22)

binding.pry

