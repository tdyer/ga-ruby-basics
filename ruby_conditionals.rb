# learn about conditionals

# if, elsif, else
my_age = 31
hair_color = "brown"

if my_age > 21 && hair_color == "red"
	puts "Have a drink"
elsif my_age == 21 && hair_color == "brown"
	puts "Just made it"
else
	puts "No drinking for you!"
end

puts "yep, nils equals nil" if nil == nil

unless hair_color == "blue"
	puts "Your hair is not blue but #{hair_color}."
	#elsif ...
end

=begin

here is a block comment in Ruby!!
yeah

=end

my_dob = 1982
current_year = 2014

case (current_year - my_dob)
	when 27
		puts "What student loans??"
	when 32
		puts "Begin to think about the day I spend off my student loans"
	when 97
		puts "I can be done with my student loans"
	else
		puts "live in poverty"
end
