def convert(temp, measure="F")
	return "Temperature must be an interger" unless temp.class == Fixnum
	if (measure == "F")
		return "Temperature below Absolute Zero" if temp < -474
		5 * (temp - 32)/9
	else
		return "Temperature below Absolute Zero" if temp < -270
		((temp*9)/5)+32
	end
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