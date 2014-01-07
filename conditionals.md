*** Conditional Statements ***

These statements return booleans.

`&&` means `and`
    returns true only when both sides are true
    [5] pry(main)> (1 < 3) && (4 < 5)
|| mean or
    returns true if either side is true
=> true

unless = if not
    e.g. `if user != admin` is the same as `unless user = admin`

##If Statement##

If (true)
  desired action
elsif (true)
  desired action
else
  default action if none are true
end
ALSO written as . . . desired action if true



case (or switch statement): another way of writing if...elsif

    ```ruby
    puts "Hello, there.  What's your name?"                         \n
    name = gets.chomp                                               \n
    case name                                                       \n
    when "tom"                                                      \n
	  puts "hello sexy."                                            \n
	when "fred"                                                     \n
	  puts "oh, hi fred. :/"                                        \n
	else                                                            \n
      puts "who are you and why are you using my computer?"         \n
    end                                                             \n
    ```

### anyone want to explain == vs =?###
== is a boolean operator - it evaluates *if* two things are equal or not and returns "true" or "false".
    I see `==` and think "is equal?"
= is an assignment operator - it assigns the value on the right to the variable on the left.
