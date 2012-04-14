class Roman
  def initialize
    @number
  end

  def parse (number)
    @number = number
    number_as_roman = ''
    if @number >= 9
      number_as_roman = XParser.new().parse(@number)
    elsif @number >= 4
      number_as_roman = VParser.new().parse(@number)
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

class XParser
  def parse (number)
    number_as_roman = ''
    if number == 9
      number_as_roman ='IX'
    elsif number >= 10
      number_as_roman = 'X'
      number -= 10
      number_as_roman += IParser.new().parse(number)
    end
    number_as_roman
  end
end

class VParser
  def parse (number)
    number_as_roman = ''
    if number == 4
      number_as_roman ='IV'
    elsif number >= 5
      number_as_roman = 'V'
      number -= 5
      number_as_roman += IParser.new().parse(number)
    end
    number_as_roman
  end
end
