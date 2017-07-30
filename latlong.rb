require 'json'

json = File.read('demo.json')

data_hash = JSON.parse(json)

def lat_and_long(hash)
  hash.each do |h|
     puts h["latitude"] + ", " + h["longitude"]
   end
end

lat_and_long(data_hash)
#So I need to parse the JSON format so I can actually manipulate it in Ruby. First I need to see what's in the file...

#Then I need to be able to extract the lat and long strings from within the Rubified data, I need to find out where they are.

#Then I need to output them with lat, long on one line before printing out the next one.
