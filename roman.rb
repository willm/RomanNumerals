class Roman
  def parse (number)
    number_as_roman = ''
    if number >= 4
      number_as_roman = parse_v_number (number)
    else
      number_as_roman = parse_i_number (number)
    end
      number_as_roman
  end

  def parse_v_number (number)
    number_as_roman = ''
    if number == 4
      number_as_roman ='IV'
    elsif number == 5
      number_as_roman = 'V'
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
