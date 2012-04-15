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
      else
	   number_as_roman += @baseLetter
       number -= @lowestNumber + 1
      end
    end
      if(number >= 4)
        number_as_roman += NumberParser.new('V', 4).parse(number)[:number_as_roman]
        number -= NumberParser.new('V', 4).parse(number)[:currentNumber]
      else
        number_as_roman += IParser.new().parse(number)
      end
      puts number
    {:number_as_roman => number_as_roman, :currentNumber => number}
  end
end
