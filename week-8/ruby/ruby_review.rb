# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
Check if a number is part of the Fibonacci sequence

INPUT: a number
OUTPUT: true/false
STEPS:
first idea:
create ARRAY of Fibbonacci sequence
check if number is in ARRAY

second:
Create a fibonacci sequence creator to see pattern
-start with 1 and 1
-add the numbers
-take sum and add to the second number from last equation

refactor ideas: 
-create check equation to test if number is in sequence
number is in sequence if 5x²+4 and/or 5x²-4 is a perfect square

=end


# Initial Solution

#This is super not efficient

def is_fibonacci?(num)
  fib_array = [1,1]
  1000.times do  
    fib_array << fib_array[-1] + fib_array[-2]
  end
  p fib_array.include?(num)
end


# Refactored Solution

# This works except for large numbers.  I believe this is because ruby returns them in scientific notation.
# I researched how to suppress/enforce scientific notation in Ruby, which can done with string formatting.
# looks something like " %f" % 21234543664321234 " but I couldn't get that to work.

=begin

def perfect_sq_check(n)
  square_root = Math.sqrt(n)
  if square_root * square_root == n
    true
  end
end

def is_fibonacci?(num)
  if perfect_sq_check(5*num*num+4) || perfect_sq_check(5*num*num-4)
    true
  else
    false
  end
end

=end


#This is not my work but I thought it was the best Fibonacci checker that I found when I researched after
#my attempts
=begin
def is_fibonacci?(num, current = 1, before = 0)
  return true if current == num || num == 0
  return false if current > num
  is_fibonacci?(num, current + before, current)
end
=end

# Reflection
=begin
What concepts did you review or learn in this challenge?

  I had to review syntax.  After the last week and a half in javascript I wasn't sure exactly how to
  write ruby.  This was pretty much syntax related.  I learned about Math.sqrt, reviewed creating
  functions, and did some light research on string formatting.

What is still confusing to you about Ruby?

  Most of this made sense, I just got confused and stuck because of the scientific notation.  It
  took a little bit of trouble shooting before I figured out that was the reason. 

What are you going to study to get more prepared for Phase 1?

  I want to get a little more comfortable with the syntax again.  Probably review previous exercises
  and do more of these reviews.

=end