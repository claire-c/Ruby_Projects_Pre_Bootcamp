def getJoke(category_choice=nil)
  if category_choice == nil
    hash = JSON.parse(Net::HTTP.get(URI('https://api.chucknorris.io/jokes/random')))
    puts hash["value"]
  else
    joke_hash = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{category_choice}")))
    puts joke_hash["value"]
  end
end

def getRandomJoke(category_choice=nil)
  array = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories")))
  random_category = array.shuffle[0]
  joke_hash = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{random_category}")))
  puts joke_hash["value"]
end
