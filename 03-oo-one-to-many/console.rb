require 'pry'
require_relative 'tweet'
require_relative 'user'

coffee_dad = User.new("coffee_dad")
tea_uncle = User.new("tea_uncle")

# tweet_1 = Tweet.new("I love coffee", coffee_dad)
# tweet_2 = Tweet.new("I love tea", tea_uncle)

coffee_dad.post_tweet("What is life?")
coffee_dad.post_tweet("I Love Coffee")
tea_uncle.post_tweet("I hate coffee .")
tea_uncle.post_tweet("I like tea.")

Tweet.all
Pry.start
0
