class NumberParser
  def initialize (baseLetter, lowest_number, preceding_letter, preceding_letter_val)
    @lowestNumber = lowest_number
    @baseLetter = baseLetter
    @preceding_letter = preceding_letter
    @preceding_letter_val = preceding_letter_val
    @letters = {
    	40 => 'L',
    	9 => 'X',
    	4 => 'V'
    	}
  end
  
  def parse (number)
    number_as_roman = ''
    while number >= @lowestNumber
      if number == @lowestNumber
        number_as_roman += @preceding_letter + @baseLetter
        number -= @lowestNumber
      else
        number_as_roman += @baseLetter
        number -= @lowestNumber + @preceding_letter_val
      end
    end
    if (number >= 40)
      result = NumberParser.new('L', 40, 'X', 10).parse(number)
      number_as_roman += result[:number_as_roman]
      number -= result[:currentNumber]
    elsif (number >= 9)
      result = NumberParser.new('X', 9, 'I', 1).parse(number)
      number_as_roman += result[:number_as_roman]
      number -= result[:currentNumber]
    elsif(number >= 4)
      result = NumberParser.new('V', 4, 'I', 1).parse(number)
      number_as_roman += result[:number_as_roman]
      number -= result[:currentNumber]
    else
      number_as_roman += IParser.new().parse(number)
    end
    {
      :number_as_roman => number_as_roman, 
      :currentNumber => number
    }
  end
end
