def getJoke(category_choice=nil)
  if category_choice == nil
    json = Net::HTTP.get(URI('https://api.chucknorris.io/jokes/random'))
    hash = JSON.parse(json)
    puts hash["value"]
  else
    joke_json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{category_choice}"))
    joke_hash = JSON.parse(joke_json)
    puts joke_hash["value"]
  end
end

def getRandomJoke(category_choice=nil)
  json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories"))
  array = JSON.parse(json)
  random_category = array.shuffle[0]
  joke_json = Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{random_category}"))
  joke_hash = JSON.parse(joke_json)
  puts joke_hash["value"]
end
