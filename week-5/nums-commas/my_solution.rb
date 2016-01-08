# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer 
# What is the output? (i.e. What should the code return?) a string with number separated by commas
# What are the steps needed to solve the problem?

# - add commas
#   -convert to array?
#   -count characters to add commas
# - return as string


# 1. Initial Solution

# def separate_comma(input)
#   num = input.to_s
#   if num.length > 3 && num.length <= 6
#     num.insert(-4, ",")
#   elsif num.length > 6 && num.length < 10
#     num.insert(-4, ",")
#     num.insert(-8, ",")
#   else
#     return num
#   end
#   return num
# end

# 100
# 1,000
# 10,000
# 100,000
# 999,999
# 1,000,000
# 999,999,999
# 1,000,000,000
# 1,000,000,000,000

# 2. Refactored Solution

def separate_comma(input)
  num = input.to_s
  if num.length > 3 && num.length <= 6
    num.insert(-4, ",")
  elsif num.length > 6 && num.length < 10
    num.insert(-4, ",")
    num.insert(-8, ",")
  end
  num
end


# 3. Reflection

=begin
What was your process for breaking the problem down? What different approaches did you consider?

First I needed to convert the integer to something where I could count the characters.  An array came to mind first but
then remembered that you can count in strings and that an array is not necessary.

Was your pseudocode effective in helping you build a successful initial solution?

To an extent yes. I did not follow my pseudocode in it's exact details but it lead me to find a solution from
a different approach

What new Ruby method(s) did you use when refactoring your solution? 
Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). 
Did it/they significantly change the way your code works? If so, how?

I could not find a refactored solution that didn't involve regex.  I did use to_s, length and insert. I used
the ruby-docs to figure out exactly how insert works, it was pretty simple to learn from the documentation.

How did you initially iterate through the data structure?

I compared the length of the string through if statements.

Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, cleaned it up

=end