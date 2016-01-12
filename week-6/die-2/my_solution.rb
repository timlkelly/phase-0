# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A single element from the input array at random
# Steps:
# Create required methods for the class
# -Initialize
#  -create instance variable and a read method
#  -create argument error if array is empty
# -sides
#   -RETURN the total length of the array as an INTEGER
# -roll
#   -RETURN a random element from given array

# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if labels == []
#       raise ArgumentError.new("Nothing here!")
#     end
#   end

#   def labels
#     @labels
#   end

#   def sides
#     sides = labels.length
#   end

#   def roll
#     roll = labels.sample
#   end
# end

# Refactored Solution

class Die
  attr_reader :labels

  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Nothing here!") if labels == []
  end

  def sides
    sides = labels.length
  end

  def roll
    roll = labels.sample
  end
end

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? 
Did you need to change much logic to get this to work?
  The main difference is the previous die class took an integer as in input for the number of sides while this 
  class took an array of strings.  The logic was the same but there were a few changes that had to be made 
  because we're counting the number of elements in the array rather than picking a number at random from a pool.

What does this exercise teach you about making code that is easily changeable or modifiable? 
  That if the code is kept clean it is easy to change small parts of it.  Additionally it was helpful to consider
  the logic i used previously and compare / apply it here.

What new methods did you learn when working on this challenge, if any?
  I did not use any new methods. I have used both .length and .sample before. (I find sample to be pretty helpful).
  I had considered using .shuffle, which would have been new to me but realized that sample makes more sense because
  it returns the random element while shuffle doesn't.

  random will return a random element or multiple elements if given an argument with an integer.  
  Shuffle returns a new array consisting of the same elements but in a new order.  So I still would have to call for
  an element with this.

What concepts about classes were you able to solidify in this challenge?
  I'm still working through classes.  The difference between local and instance variables and when to use which is
  what I'm focusing on.  

=end
