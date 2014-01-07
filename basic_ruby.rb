# This is a comment

# And here's a comment 
# spread across a 
# couple of lines



=begin
 This is a comment that just 
 has too many lines 
NOTE!! The =begin and =end MUST be at the beginning of the line.

This comment syntax that's good for commenting 
out lots of code!

=end

# set the variable my_child_age to 2, which is an instance of Fixnum class
my_child_age = 2
puts "my child's age is #{my_child_age}"

# set the variable my_age to 32, which is an instance of Fixnum class
my_age = 32 
puts "my age is #{my_age}"

current_year = 2014
puts "current year is #{current_year}"

child_dob = current_year - my_child_age
puts "child's Date of Birth = #{child_dob}"
puts "child's Date of Birth = #{current_year - my_child_age}"

my_dob = current_year - my_age
my_dads_age = 57
my_dads_dob = current_year - my_dads_age
puts "My Dad's dob is #{my_dads_dob}"

my_first_name = "Jen"
my_last_name = "Smith"
my_full_name = my_first_name + " " + my_last_name
puts "my full name is #{my_full_name}"