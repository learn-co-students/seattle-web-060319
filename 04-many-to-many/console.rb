require 'pry'
require_relative 'tweet'
require_relative 'user'
require_relative 'like'

coffee_dad = User.new("Coffee Dad")
tea_uncle = User.new("Tea Uncle")
cody = User.new("Cody")
ix = User.new("Ix")
john = User.new("John")

30.times do |x|
  Tweet.new("Hi I drank #{x} cups of DRANKS today. ", User.all.sample)
end

10.times do |x|
  Like.new(Tweet.all.sample , User.all.sample)
end

Pry.start
0
