require "mustache"
require "smarter_csv"
require "./letter.rb"



user_data = SmarterCSV.process('data.csv')


Letter.new.render
