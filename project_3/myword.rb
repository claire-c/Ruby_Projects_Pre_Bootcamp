#So I think what I have to do here is parse the CSV file and then manipulate it using Ruby code so that it fits in the mustache template.
require "mustache"
require "smarter_csv"

data = SmarterCSV.process('data.csv')
#data is now saved as a hash
puts data
