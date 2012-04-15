class NumberParser
  def initialize (baseLetter, lowest_number)
    @lowestNumber = lowest_number
    @baseLetter = baseLetter
  end
  
  def parse (number)
    number_as_roman = ''
    while number >= @lowestNumber
      if number == @lowestNumber
       number_as_roman = 'I' + @baseLetter.to_s
       number -= @lowestNumber
      elsif number >= @lowestNumber
	   number_as_roman += @baseLetter
       number -= @lowestNumber + 1
      end
    end
      if(number >= 4)
        number_as_roman += NumberParser.new('V', 4).parse(number)
        number -= number
      else
        number_as_roman += IParser.new().parse(number)
      end
    number_as_roman
  end
end
