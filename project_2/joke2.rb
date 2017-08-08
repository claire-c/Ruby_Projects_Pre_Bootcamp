require 'json'
require 'net/http'
require './jokeAPI.rb'

loop do
  puts "\nJon! Choose a category and I will call an API to tell you a Chuck Norris joke..."
  getJokeCategories
  puts "What would you like? Type 'exit' to leave."
  category_pick = gets.chomp.downcase
  break if category_pick == "exit"
  getJoke(category_pick)
end
