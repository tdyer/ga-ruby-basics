# learn about conditionals

# if, elsif, else
my_age = 21
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
end
