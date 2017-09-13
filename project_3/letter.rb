class Letter < Mustache
  def initialize(row = {})
    @options = row
  end

  def name
    @options[:name]
  end

  def address
    @options[:address]
  end

  def order
    @options[:order]
  end
end

#map over the CSV and then render the letters 
