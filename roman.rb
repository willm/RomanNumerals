require_relative 'numberParser'

class Roman
  def initialize
    puts 'your mum'
    @number
  end

  def parse (number)
    @number = number
    number_as_roman = ''
    if @number == 50
      number_as_roman = 'L'
      @number -= 50
    end
    number_as_roman += NumberParser.new('X', 9).parse(@number)[:number_as_roman]
    @number -= NumberParser.new('X', 9).parse(@number)[:currentNumber]
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
