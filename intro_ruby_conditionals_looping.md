### Plan for Today:
- Ruby Basics
- Conditionals
- Loops
- Methods (might bump to tomorrow)


***Using Pry***

Ruby: You can use a line-by-line interpreter like IRB or PRY, or run a text file.

We can use PRY in our terminals to interact with Ruby. It is useful in helping to de-bug Ruby code as well built larger programs in the coming weeks. For now, we are going to use PRY the same way we would use IRB.

Why use PRY?  Good for debugging and quick feedback on your code. Save a year of your programming life. Also a fun playground for seeing immediate results

**PRY Tips and Tricks**

* To install, type `gem install pry` in your Terminal.
* To start PRY, type `pry` and to exit, type `quit`.
* If you mess up and need to exit, hit ctrl-C to get back your PRY prompt.

    [21] pry(main)> 'mixed up"
    [21] pry(main)*   {ctrl c to remove * and return to original state -works in most Unix programs}
    [22] pry(main)>

* To see what you've done in pry, navigate to your home directory and type: `less .pry_history`
* Tab completion also works in PRY and SublimeText

###Intro to Ruby###

Ruby is an interpreted language (as opposed to a compiled language such as C\C++) Ruby works in real-time: we don't have to write something, and then compile and then run it--with Ruby we can just write the program, and it runs it as type.
This means less code to do the same thing in another language: more efficient.

**FACT!**: Every line of Ruby code returns a value.

***Some of the Classes of Objects (kinds of info) in Ruby:***

- Integers: Numbers!
  * `1`, `2`, `3`, `4`, `5`, `326`
- Floats: Decimals!
  * `1.6`, `3.7`, `13.1`, `26.2`
- String: A sequence of characters, can be a variable or a constant
  * `"Apple Cider"` `'Pear Cider'`
  * single quotes: are whatever's in them (which is badass)
  * double quotes: have more power
  * String interpolation: `"Inside a string, print something that is  #{not-a-string}."`
- Boolean: get `true`/`false` as return values
  * Boolean operators: `<` `>` `<=` `>=` `==` `!=`
- Variables: by convention, we use lower-case and underscores for multi-word-variable names.
  * `=` is the assignment operator.  It assigns a value to a variable.
  * passing by value means that when a variable is assigned it is assigned to the original object/value and not the contingent variable  (see example of passing by value below)

Example of passing by value:

```ruby
    a = 42
    b = a
    b   => 42
    a = 41
    b   => 42 (!!)
```

* Snake case: underscore between words of variable names. We're okay with longer names.
    Ex) `this_is_an_example_of_snake_case = "yep"`
* Camel case: `ThisIsCamelCase`. We use this to name Classes and Modules; Ruby will let you use it for variables but by convention we don't.
- Constants: `ALL_CAPS`
  * Set once and never chance in program.
  * Ruby does not enforce the all-caps convention but it's good.
  * Ruby will allow you to change the value of a constant, but it gives you a warning.

How do you find what kind of data your thing is?  Use the .class method:
    `2.class`
    => fixnum
    `"apple".class`
    => string
    `1.0.class`
    => float

How do you find out the parent class(es) of an object's class?
`.class.ancestors` will return the list of parent classes of the object.

***Math!***

- Integer Division: (`/`) always rounds down.
  * e.g. `10 / 4 = 2`
  * If you use integers, Ruby will return an integer.
- Float Division: If you use a float in the input, then the output will be a float as well.
- Modulo (`%`) : returns the remainder of division
  * e.g. `10 % 4` ("ten modulo four") returns 2 because the ten divides by four twice with two left over.
- Exponents: e.g. `4 ** 2` ("four squared") = 16
- Repeating decimals stop at 20 digits, module bigdecimal can be used to store more digits
- Increment `+=` and `-=` (a= 10, a += 1, a = 11) a +=1 is shorthand for `a = a + 1`
- Concatenate: `"grape" + "fruit" = "grapefruit"`
  * `+` is a method you can call on strings and floats and integers, defined separately within each class probably
  * `"grape" << "fruit" = "grapefruit"`

Boolean operators:

- `==` equal to?
- `!=` not equal to?
- `>=` `=<`

Logical operators:
- `<=>` is first greater than, equal to, or less than second? returns -1, 0, 1 "spaceship operator"

    [52] pry(main)> 0 <=> 3
    => -1
    [53] pry(main)> 3 <=> 0
    => 1
    [54] pry(main)> 2<=> 2
    => 0

***What is the meaning of binary???***

Computers naturally think in base 2 (ones and zeroes) because all those tiny semiconductors work like a series of switches with on and off modes (actually high voltage or low voltage running through them, evaluated as presence or absense of electron flow), translated into ones and zeroes.

***Console and Strings CodeAlong***

_What is the difference between `puts` and `p`?_

* `puts` prints the result to the screen as a string ("put-string")
* `p` does the same as `.inspect`

_How do I quickly comment-out a bunch of lines of code?_

* highlight them and then use command-slash
* do the same thing again to
* take off the comments

'' vs ""
A string expression begins and ends with a double or single-quote mark. Double-quoted string expressions are subject to backslash notation and interpolation. A single-quoted string expression isn't; except for \' and \\.

Concatenation:
    `puts "David" + "Fisher" `

_What is the deal with `gets.chomp`?_

`.chomp` deletes the last character. When you type gets, Ruby records every keystroke including the return key. gets.chomp tosses out the return key that you inevitably had to type.

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



***LOOPS***
- control structure. intended to repeat over something
- `while` loop: does thing while a condition is true
    `# This is an infinite loop         /n
    while true                          /n
        puts "do this thing forever"    /n
    end`

- .times


QUIZ TOMORROW:
        - fill in the blank with methods to start seeing and using them
        - maybe a crazy trick on Thursday morning's quiz :)

Homework: 1.(Optional) Read about Arrays and Methods
          2. Guess the Number game:
                - Fork, clone, do, check into your github, pull request to turn it in.
                - https://github.com/tibbon/ga-guess-the-number
