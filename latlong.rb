require 'json'

json = File.read('demo.json')
data_hash = JSON.parse(json)

data_hash.each do |h|
  puts h["latitude"] + ", " + h["longitude"]
end
