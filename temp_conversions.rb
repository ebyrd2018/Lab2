def convert(temp, measure="F")
	return "Temperature must be an interger" unless temp.class == Fixnum
	return "Temperature below Absolute Zero" if below_absolute_zero?(temp,measure)
	if (measure == "F")
		5 * (temp - 32)/9
	else
		((temp*9)/5)+32
	end
end

def below_absolute_zero?(temp, measure)
	(temp < -454 and measure == "F") or (temp < -270 and measure == "C")
end

puts convert(32)
puts convert(50)
puts convert(212)
puts convert("zero")
puts convert(-500)
puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")