require 'json'
require 'net/http'

json = Net::HTTP.get(URI('https://api.chucknorris.io/jokes/random'))
hash = JSON.parse(json)

puts hash["value"]
