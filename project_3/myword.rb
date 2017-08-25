require "mustache"
require "smarter_csv"
require "./functions.rb"

class Simple < Mustache #I'm not sure what's going on with this.
end

user_data = SmarterCSV.process('data.csv')

getName(user_data) #OK I'm not sure if just listing the functions is correct but leave it here just now.
getAddress(user_data)
getOrder(user_data)


Simple.template_file = './letter.mustache' #Err.
Simple.render



# Now create your app, myword.rb.  It should read the CSV file you point to in the first argument, and produce a number of text files - one for each row of the CSV - where you’ve substituted the values in your template, with the values in the CSV row.
