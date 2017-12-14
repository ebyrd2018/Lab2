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

# Ruby Blocks

cast = {bob_parr: :incredibles, helen_parr: :incredibles, lucius: :incredibles,

edna: :incredibles, woody: :toy_story, buzz: :toy_story, bopeep: :toy_story,

andy: :toy_story, merida: :brave, marlin: :finding_nemo, dory: :finding_nemo,

nemo: :finding_nemo, sulley: :monsters_inc, mike: :monsters_inc,

randall: :monsters_inc, sally: :cars, mcqueen: :cars, doc: :cars,

mater: :cars, jessie: :toy_story_3, big_baby: :toy_story_3}

toys = [:woody, :bopeep, :buzz, :jessie, :big_baby]

females = [:helen_parr, :edna, :bopeep, :dory, :sally, :jessie, :merida]

year_produced = {incredibles: 2004, toy_story: 1995, brave: 2012, finding_nemo: 2003, up: 2009, walle: 2008}

# 2) 
puts toys.select { |toy| females.include? toy}

# 3) 
puts year_produced.select { |movie| year_produced[movie] > 2006}.keys

# 4) 
year_produced.select { |movie| cast.values.include? movie}.each {|val| puts val}

# 5) 
year_produced.keys.each {|movie| puts movie.to_s.split('-').map(&:capitalize).join(' ')} 