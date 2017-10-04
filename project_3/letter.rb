require "mustache"
require "smarter_csv"

def render_template(row, template)
  template[:name] = row[:name]
  template[:address] = row[:address]
  template[:order] = row[:order]
  template.render
end

user_data = SmarterCSV.process('data.csv')

Mustache.template_file = File.dirname(__FILE__) + '/letter.mustache'
view = Mustache.new

user_data.each do |each_row|
  puts render_template(each_row, view)
end
