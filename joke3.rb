require 'json'
require 'net/http'

json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories"))
array = JSON.parse(json)

puts "Jon! Type a category for a Chuck Norris joke. No category to your taste? No problem. Just hit enter and I'll tell you a random one..."
puts array

input = gets.chomp.downcase

def getjoke(category, json_array)
  if category == ""
    json = Net::HTTP.get(URI('https://api.chucknorris.io/jokes/random'))
    hash = JSON.parse(json)
    puts hash["value"]
  elsif json_array.include?(category)
    joke_json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{category}"))
    joke_hash = JSON.parse(joke_json)
    puts joke_hash["value"]
  else
    puts "Typo? Try again!"
  end
end

getjoke(input, array)


# Your joke.rb already does the hard work of calling an API and returning a joke, right?
# And joke2 does almost the same thing - it just adds an extra parameter to the URL.
#
# Can you right one function that can do both?  That you can use in joke and in joke2?
#
# def getJoke(category)
#   ... # does something here which includes that extra parameter or not depending if category is blank or not.
# end
#
# It must be a function.  Something like the above.
#
# Then use the *exact* same function in both joke and in joke2
#
# Delive r that.
