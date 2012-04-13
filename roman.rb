class Roman
  def parse (number)
    if number == 2
      return 'II'
    elsif number == 3
      return 'III'
    elsif number == 4
      return 'IV'
    end
    'I'    
  end

  def parse_i_number (number)
    @number = ''
    number.do{ @number += 'I' }
  end
end
