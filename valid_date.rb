require 'date'

def valid_date?(year, month, day)
	if (is_integer?(year, month, day))
		begin
			Date.new(year, month, day)
			return true
		rescue ArgumentError
			return false
		end
	else
		return false
	end
end

def is_integer?(year, month, day)
	year.class == Fixnum and month.class == Fixnum and day.class == Fixnum
end

# Tests
puts valid_date?(2013, 1, 29) # => true
puts valid_date?(2013, 2, 28) # => true
puts valid_date?(2013, 2, 29) # => false
puts valid_date?(2014, 2, 29) # => false
puts valid_date?(2014, 9, 29) # => true
puts valid_date?(2014, 9, 31) # => false
puts valid_date?(2013, 12, 31) # => true
puts valid_date?(2013, 12, 32) # => false
puts valid_date?(2013, 13, 31) # => false
puts valid_date?("2014", "Jan", 31) # => false