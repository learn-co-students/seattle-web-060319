require 'rest-client'
require 'pry'

puts "Please enter search term : "
user_input = gets.chomp

url = "https://www.googleapis.com/books/v1/volumes?q=#{user_input.gsub(" ", "+")}"

resp = RestClient.get(url)
json = JSON.parse(resp)

books = json['items']
books.each do |book|
  puts "**************************************"
  puts book['volumeInfo']['title']
  # authors is an array
  puts book['volumeInfo']['authors']
  puts book['volumeInfo']['description']
end
Pry.start
