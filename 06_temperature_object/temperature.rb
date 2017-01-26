class Temperature

  def initialize(temp)
    @temp = temp
    #@temp = { f: 32 }
  end

  def self.in_celsius(degree)
    Temperature.new({ :c => degree })
  end

  def self.in_fahrenheit(degree)
    Temperature.new({ :f => degree })
  end

  def to_fahrenheit
    @temp.each do |type, degree|
      if type == :c
        return ((degree * 9 / 5) + 32)
      else
        return degree
      end
    end
  end

  def to_celsius
    @temp.each do |type, degree|
      if type == :f
        return ((degree - 32) * 5 / 9)
      else
        return degree
      end
    end
  end

end

class Fahrenheit < Temperature

  def initialize(temp)
    @temp = { :f => temp }
  end

end

class Celsius < Temperature

  def initialize(temp)
    @temp = { :c => temp }
  end

end
