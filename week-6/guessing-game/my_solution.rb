# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2hr] hours on this challenge.

# Pseudocode

# Input: A guess, as an integer
# Output: A symbol that state is the guess is correct, lower or higher than the answer
# Steps:
# -Setup the class
# -build a METHOD for each instance.
#  -answer, guess, solved?, higher, lower
# -setup conditional instances to compare the guess to the answer


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def answer
#     @answer
#   end

#   def guess(num)
#     @num = num
#     if num == answer
#       return :correct
#     elsif num > answer
#       return :high
#     elsif num < answer
#       return :low
#     end
#   end

#   def num
#     @num
#   end

#   def solved?
#     if answer == num
#       return true
#     else
#       return false
#     end
#   end
# end

# Refactored Solution

# class GuessingGame
#   attr_reader :answer
#   attr_accessor :num

#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(num)
#     @num = num
#     if num == answer
#       :correct
#     elsif num < answer
#       :low
#     else
#       :high
#     end
#   end

#   def solved?
#     if answer == num
#       true
#     else
#       false
#     end
#   end
# end

# 2nd pass of refactor

class GuessingGame
  attr_reader :answer, :num

  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @num = num
    if num == answer
      :correct
    else
      num < answer ? :low : :high
    end
  end

  def solved?
    answer == num ? true : false
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Classes allow us to group information or objects together.  Instance variables allow us to assign data to that instance
  of the class and methods allow for the actions that use that relevant data from that instance.

  Referencing Black's ticket analogy, you can have a ticket class, with instance variables such as price, location, date.
  ticket class methods can be used to set those instance variables or possibly check when the guest has used their ticket.
  Thinking about when they scan your ticket at a concert hall.

When should you use instance variables? What do they do for you?
  Instance variables are used when defining a class. They let you allow variable assignment across methods
  in that specific instance.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  I had difficulty in this challenge because I tried to make everything a separate method.  Specifically the correct, low
  and high symbols.  This kept failing the Rspec tests.  It took me a while to realize that the issue was not with my code
  or control flow but because the Rspec is looking for the returned symbol from guess and not from separate methods.

  The control flow in this class can be difficult to realize at first but you have to realize that if a method returns a value,
  that value is now outside of the method and accessible to every other method in the class.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols are beneficial because of their natural unique characteristic. This means that there is only
  one :low, :high, and :correct symbol.  This program uses symbols because I'd imagine that there will
  be a lot of guesses in this guessing game before the right answer is found.  If the program were to use
  strings, it would have to create a new string for each guess. This would take up more memory than re-using
  the same symbol when needed.
=end