# Your Names
# 1) Tim Kelly
# 2) Baron Kwan

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# Intial Solution

# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.
=begin
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # a build-in hash that store items with its serving size.
#   error_counter = 3
#   # number of item inside the library

#   library.each do |food|
#     # Iterate through the library to check if there is a recipe for it
#     if library[food] != library[item_to_make]
#       error_counter += -1
#       # If the item doesn't match with library then reduce the size of 1
#     end
#   end

#   if error_counter > 0
#     # Raise an argument if the item is not in the library
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
  
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  
  # Return the value of the given key as an integer
  remaining_ingredients = num_of_ingredients % serving_size
  # Return the remaining ingredients as an integer
  
  food_made = num_of_ingredients / serving_size 
  
  if remaining_ingredients == 0
    "Calculations complete: Make #{food_made} of #{item_to_make}"
  elsif remaining_ingredients >= 7
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You should make a pie!"
  elsif remaining_ingredients >= 5
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Make CAKE!"
  elsif remaining_ingredients >= 1
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. How about some cookies?"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)

=end

# Cleaned up comments, refactored

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  food_made = num_of_ingredients / serving_size 
  
  if remaining_ingredients == 0
    "Calculations complete: Make #{food_made} of #{item_to_make}"
  elsif remaining_ingredients >= 7
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You should make a pie!"
  elsif remaining_ingredients >= 5
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Make CAKE!"
  elsif remaining_ingredients >= 1
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. How about some cookies?"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
  It's very important to have legible code.  It's easier to work with, and for 
  others to read it. Additionally it's good to have your code flow in a way that works.
  this assignment felt very backwards and not to over complicate things

Did you learn any new methods? What did you learn about them?
  I learned about assoc but we did not use it.  assoc(obj) is a hash method
  that when given an object will search through the hash comparing obj with 
  the key (using ==).  It returns the key/value pair as an array or nil if there is 
  no match

What did you learn about accessing data in hashes? 
  To consider what it is you need to get out of the hash.  In the exercise we just
  needed to see if the key was present.  We don't actually need the key or the paired
  value.  Additionally while values_at is a cool method. If you're just trying to get 
  the value for one key, just access it the simple way.

What concepts were solidified when working through this challenge?
  This assignment familiarized myself with case statements.  I don't use them very often
  so it was a little unexpected.
=end