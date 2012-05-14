class RomanBase
	def initialize(letter, prefix, lowest_number)
		@letter = letter
		@prefix = prefix
		@lowest_number = lowest_number
	end
	
	def letter
		@letter
	end
	
	def prefix
		@prefix
	end
	
	def lowest_number
		@lowest_number
	end
end

class RomanNumber
  def initialize(number, letter)
    @number = number
    @letter = letter
  end
	def number
	  @number
	end

	def letter
	  @letter
end
end
