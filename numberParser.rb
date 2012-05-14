#require 'RomanBase.rb'
require_relative 'RomanBase.rb'

class NumberParser
  def initialize ()
    @base_pairs = [
    	RomanBase.new('C', RomanNumber.new(10,'X'), 90),
    	RomanBase.new('L', RomanNumber.new(10,'X'), 40),
    	RomanBase.new('X', RomanNumber.new(1,'I'), 9),
    	RomanBase.new('V', RomanNumber.new(1,'I'), 4)
    	]
  end
  
  def parse_base_pair(base_pair, number, number_as_roman)
    	while number >= base_pair.lowest_number
		  if number == base_pair.lowest_number
		    number_as_roman += base_pair.prefix.letter + base_pair.letter
		    number -= base_pair.lowest_number
		  else
		    number_as_roman += base_pair.letter
		    number -= base_pair.lowest_number + base_pair.prefix.number
		  end
		end
		{
		  :number_as_roman => number_as_roman, 
		  :currentNumber => number
		}
	end
  
  def parse (number)
    number_as_roman = ''
    @base_pairs.each do |pair|
    	if (number >= pair.lowest_number)
		  result = parse_base_pair(pair, number ,number_as_roman)
		  number_as_roman = result[:number_as_roman]
		  number = result[:currentNumber]
		end
    end
    if(number < 4 && number > 0)
      number_as_roman += IParser.new().parse(number)
    end
    {
      :number_as_roman => number_as_roman, 
      :currentNumber => number
    }
  end
end
