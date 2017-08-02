#Get a random category from the list of categories and then use that category to retrieve a random joke from said category.
require 'json'
require 'net/http'

json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories"))
array = JSON.parse(json)

puts "Jon! Choose a category and I will call an API to tell you a Chuck Norris joke... What would you like?"
puts array

category = gets.chomp.downcase

if array.include?(category) == false
  puts "That's not a valid category, Jon! I need to write a loop (another enemy of mine) so you can try again but until that happens you'll just need to run the app again. SORRY!"
else
  puts "Good choice! *clears throat*"
  joke_json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{category}"))
  joke_hash = JSON.parse(joke_json)
  puts joke_hash["value"]
end
