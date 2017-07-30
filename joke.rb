require 'json'
require 'net/http'

site = Net::HTTP.get(URI('https://api.chucknorris.io/jokes/random'))

#This all works below. But I need to figure out how to get the web page so it can then be parsed and put into function.

json = File.read(site)

hash = JSON.parse(json)

def chucknorris(joke)
  puts joke["value"]
end

chucknorris(hash)
