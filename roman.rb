class Roman
  def initialize
    @number
  end

  def parse (number)
    @number = number
    number_as_roman = ''
    if @number >= 9
      number_as_roman = NumberParser.new('X', 9).parse(@number)
    elsif @number >= 4
      number_as_roman = NumberParser.new('V', 4).parse(@number)
    end
    if @number < 4
      number_as_roman = IParser.new().parse (@number)
    end
      number_as_roman
  end
end
 
class IParser
  def parse (number)
    number_as_roman = ''
    for i in (1..number)
      number_as_roman += 'I'
    end
    number_as_roman
  end
end

class NumberParser
  def initialize (baseLetter, lowest_number)
    @lowestNumber = lowest_number
    @baseLetter = baseLetter
  end
  
  def parse (number)
    number_as_roman = ''
    if number == @lowestNumber
      number_as_roman = 'I' + @baseLetter.to_s
    elsif number >= @lowestNumber
      number_as_roman = @baseLetter
      number -= @lowestNumber + 1
      number_as_roman += IParser.new().parse(number)
    end
    number_as_roman
  end
end
