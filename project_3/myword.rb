#So I think what I have to do here is parse the CSV file and then manipulate it using Ruby code so that it fits in the mustache template.
require "mustache"
require "smarter_csv"
require "./functions.rb"

data = SmarterCSV.process('data.csv')
#data is now saved as a hash
puts data


#Letter.render


# Now create your app, myword.rb.  It should read the CSV file you point to in the first argument, and produce a number of text files - one for each row of the CSV - where you’ve substituted the values in your template, with the values in the CSV row.
