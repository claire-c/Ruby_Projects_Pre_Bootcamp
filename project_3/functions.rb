#Write my functions for the template here??
#class Simple < Mustache

  def getName(data)
    data.each do |row|
      puts row[:name] #This is a side effect. Replace with return once you've figured this all out.
    end
  end

  def getAddress(data)
    data.each do |row|
      puts row[:address]
    end
  end

  def getOrder(data)
    data.each do |row|
      puts row[:order]
    end
  end

#end
