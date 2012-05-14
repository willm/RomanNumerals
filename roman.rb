#require 'numberParser.rb'
require_relative 'numberParser.rb'

class Roman
  def initialize
    @number
    @number_parser = NumberParser.new()
  end

  def parse (number)
    @number = number
    number_as_roman = ''
    result = @number_parser.parse(@number)
    number_as_roman += result[:number_as_roman]
    @number -= result[:currentNumber]
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
