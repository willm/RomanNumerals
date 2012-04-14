class Roman
  def initialize
    @number
  end

  def parse (number)
    @number = number
    number_as_roman = ''
    if @number >= 4
      number_as_roman = VParser.new().parse(@number)
    end
    if @number < 4
      number_as_roman = parse_i_number (@number)
    end
      number_as_roman
  end

  

  def parse_i_number (number)
    number_as_roman = ''
    for i in (1..number)
      number_as_roman += 'I'
    end
    number_as_roman
  end
end

class VParser
  def parse (number)
    number_as_roman = ''
    if number == 4
      number_as_roman ='IV'
    elsif number == 5
      number_as_roman = 'V'
    else
      number_as_roman = 'VI'
    end
    number_as_roman
  end
end
