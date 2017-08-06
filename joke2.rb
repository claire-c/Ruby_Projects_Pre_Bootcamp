require 'json'
require 'net/http'
require './jokeAPI.rb'

json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories"))
array = JSON.parse(json)

loop do
  puts "Jon! Choose a category and I will call an API to tell you a Chuck Norris joke..."
  puts "What would you like? Type 'exit' to leave."
  puts array
  category_pick = gets.chomp.downcase
  break if category_pick == "exit"
  getJoke(category_pick)
end
