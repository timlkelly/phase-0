# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: die with a number of sides
# Output: a random number 
# Steps: 
# -create die class
# -allow it to roll a random number based on the number of sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if @sides < 1
#       raise ArgumentError.new("That die is too small!")
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     roll = Random.new
#     roll.rand(1..@sides)
#   end
# end

# 3. Refactored Solution

class Die
  attr_reader :sides

  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("That die is too small!") if sides < 1
  end

  def roll
    roll = Random.new
    roll.rand(1..@sides)
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
  An argument error is when an object calls for (an) argument(s) and the given argument is 
  incorrect.  Either too many, too few or not valid.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  I used the Random method.  Actually now thinking about it I believe I constructed a Random object / class
  instance, called roll.  And then used the .rand method which the instance inherited from the Random class.
  It was fairly straight forward to use given the documentation on the ruby doc.  At first I ran .rand on just
  @sides. which did not work because .rand returns a number from zero to the max.  I turned it into a range
  starting at 1 and this solved the issue.

What is a Ruby class?
  A ruby class is an object that can be "copied" or instanced into further objects. It is also a class.

Why would you use a Ruby class?
  Possibly when you would like to give a method, or series of methods to multiple variables.
  You would also use it as a way of categorizing objects in your code.  

What is the difference between a local variable and an instance variable?
  Local variables are limited to being used inside of a method and can not be accessed outside of
  said method.  Instance variables, which are denoted by the @ sign, are available across methods
  within that object or instance.

Where can an instance variable be used?
  Instance variables are used when defining a class. They allow a class instance to pass data between
  different methods inside of that class.

=end