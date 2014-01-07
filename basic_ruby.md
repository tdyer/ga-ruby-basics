# Goals: Learn Basic Ruby.

# Pry.
Pry is a Ruby REPL, (Read, Evaluate, Print and Loop).  We're going to use Pry to interact with Ruby to start off with.

## Pry will
1. Read a line of Ruby
2. Evaluate this line
3. Prints the result of evaluation.
4. And loops back to read the next line of Ruby

We're going to use Pry to 'play' and learn some basic ruby.

## Install Pry
$ gem install pry

## Run Pry
$ pry

Now we are in the pry "debugger"


# Ruby Types
  Ruby is an Object Oriented Language. This means that, almost,
  everything we create in a Ruby program is an instance or an object
  of a type, aka class.

# Class
A Type or Class defines what data and behavior an object has. The data for a Class is referred to as it's set of attributes. The behavior of Class is referred to as it's set of methods.

## Attributes
Each attribute defines a cohesive piece of the overall data of a class.

## Methods
Implement a behavior.

## Example
   An example of a Ruby class would be Person. A Person class could
   define it's data by having a first name, last name and phone number
   attributes. It could aslo define it behavior by having methods to show
   their current location and the grade of the last quiz they took.

### methods == behavior

### attributes == data.

#  Simple Ruby Classes.
Numbers, Strings, Arrays, Ranges, Symbols, Hashes, Regular Expressions.

Only have behavior, set of methods.  Some of these methods may be called operators as well.

## Numbers

### Fixnum
Integers are all objects of class Fixnum.

### In Pry
 1 <return>
 55 <return>
 55.class.name <return>

### Behavior/Methods

#### Operators
Operators are a subset of a Fixnum's behaviors. Typically math operations.

### Google ruby fixnum
Should get you to the definition of this class.
[Fixnum](http://ruby-doc.org/core-2.1.0/Fixnum.html)

### In Pry
1 + 3

8 * 7

66 - 33

108/8

### Float

### In Pry
 1.6
 55.80706
 55.80706.class.name

#### Operators
Lots of them. Check out the Ruby docs for Float.

### Google ruby float
Should get you to the definition of this class.
[Float](http://www.ruby-doc.org/core-2.1.0/Float.html)num.html)

### In Pry
1.7 + 3.66

8.1 * 10

66.02 - 33.03

108.1/8.6

# Boolean.
There are two classes for booleans, TrueClass and FalseClass. Each of these classes can only have one instance/value.

The TrueClass only has the instance true.
The FalseClass only has the instance true.

Check out these classes in another online Ruby documentation system.
http://apidock.com/ruby

## Operators
 <, >, <=, >=, ==, !=

## In Pry

true.class.name

false.class.name

true == false

(1 == 1).class.name

(1 == 1)

(1 == 1)  == true

(1 == 55)  == true

# Strings.
Ruby strings are a set of characters. It is *very* important that you know the methods for this class. You'll be using them a lot!.

### Behavior/Methods
Lots of methods that you should know!

### Google ruby string
[String](http://ruby-doc.org/core-2.1.0/String.html)

### In Pry
"This is a string".length
"This is a string".count
"This is a string".reverse
"This is a string".upcase
"This is a string".split

"This is " + "a string"
"This is " << "a string"
"This is " * 3

"This one" == "This one"
"This one" == "This two"
"This one" != "This one"
