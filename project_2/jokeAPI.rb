def getJokeCategories
  categories_list = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories")))
  puts categories_list
end

def getJoke(category_choice=nil)
  if category_choice == nil
    hash = JSON.parse(Net::HTTP.get(URI('https://api.chucknorris.io/jokes/random')))
    puts hash["value"]
  else
    categories_list = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories")))
      if categories_list.include?(category_choice)
        joke_hash = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{category_choice}")))
        puts joke_hash["value"]
      else
        puts "Is that a  typo?"
      end
  end
end

#This is practice
def getRandomJoke(category_choice=nil)
  categories_list = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories")))
  random_category = categories_list.shuffle[0]
  joke_hash = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{random_category}")))
  puts joke_hash["value"]
end
