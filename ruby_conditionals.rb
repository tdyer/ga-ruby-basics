# learn about ruby conditionals

# if, elseif, else
tom_age = 34
hair_color = 'red'

if tom_age > 21 && hair_color == 'red'
  puts "Have a drink"
elsif tom_age == 21 && hair_color == 'blue'
  puts "Just made it, Have a drink"
else
  puts "No drinky for you, bye"
end

puts "OK, can drink" if tom_age > 33

# unless, not a big fan of unless
unless hair_color == "blue"
  puts "You hair is NOT blue"
# elsif ...
# elsif ..
# elsif ...
# else
end

=begin

# hair_color == 'blue' is evaluated to false
puts "is not blue" unless hair_color == 'blue'

# same result as above
# hair_color != 'blue' is evaluated to true
puts "is not blue" if hair_color != 'blue'

=end

my_dob = 1977
current_year = 2014

case (current_year - my_dob) 
when 27
  puts "move out of parents house"
when 31
  puts "begin to think about the day I pay off my students loans"
when 97
  puts "be done with my students loans"
else 
  puts "pretend you don't have any debt"
end

