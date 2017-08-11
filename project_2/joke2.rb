require 'json'
require 'net/http'
require './jokeAPI.rb'

loop do
  puts "\nJon! Choose a category and I will call an API to tell you a Chuck Norris joke..."
  the_categories = getJokeCategories()
  puts(the_categories) 
  puts "What would you like? Type 'exit' to leave."
  category_pick = gets.chomp.downcase
  break if category_pick == "exit"
  puts getJoke(category_pick)
  puts "Is that a typo?" if ! the_categories.include?(category_pick)
end
