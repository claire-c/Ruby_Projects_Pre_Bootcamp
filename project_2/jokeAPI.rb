def getJokeCategories()
  categories_list = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/categories")))
  return categories_list
end

def getJoke(category_choice=nil)
  api_url = "https://api.chucknorris.io/jokes/random"
  joke = JSON.parse(Net::HTTP.get(URI(api_url)))
  return joke["value"] if category_choice == nil
  categories_list = getJokeCategories()
    if categories_list.include?(category_choice)
      joke = JSON.parse(Net::HTTP.get(URI(api_url + "?category=#{category_choice}")))
      return joke["value"]
    else
      return nil
    end
end

#This is practice
def getRandomJoke(category_choice=nil)
  categories_list = getJokeCategories()
  random_category = categories_list.shuffle[0]
  joke = JSON.parse(Net::HTTP.get(URI("https://api.chucknorris.io/jokes/random?category=#{random_category}")))
  return joke["value"]
end
