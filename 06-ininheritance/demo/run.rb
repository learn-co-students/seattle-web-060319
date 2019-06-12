require 'pry'
require_relative './animals.rb'
require_relative './mammals.rb'
require_relative './hunt.rb'
require_relative './cat.rb'
require_relative './shark.rb'
require_relative './sloth.rb'

jaws = Shark.new('jaws')
rose = Cat.new('rose')
rohit = Sloth.new('rohit')

binding.pry