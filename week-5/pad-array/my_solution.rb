# Pad an Array

# I worked on this challenge [with: Pete Stradakis ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array with minimum length and pad with something
# What is the output? (i.e. What should the code return?) padded array
# What are the steps needed to solve the problem?
  # Determine array length
  # Pad array if too short
  # return array


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size
#     return array
#   elsif array.length < min_size
#     until array.length == min_size
#       array.push(value)
#     end
#     return array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive

#   new_array = array.clone

#   if new_array.length >= min_size
#     return new_array
#   elsif new_array.length < min_size
#     until new_array.length == min_size
#       new_array.push(value)
#     end
#     return new_array
#   end

# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
    array.insert(min_size-1, value)
  end
end


def pad(array, min_size, value = nil)
  new_array = array.clone
  if new_array.length >= min_size
    return new_array
  else
     until new_array.length == min_size
      new_array.insert(-1, value)
    end
    return new_array
  end



end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?

  # Yes the pseudocoding was helpful to create a step by step approach to this method

# Once you had written your pseudocode, were you able to easily translate it into code? 
# What difficulties and successes did you have?

  # The flow and structure of the pseudocode was successful. It was easy for us to work from our
  # outline and bridge it into code

# Was your initial solution successful at passing the tests? If so, why do you think that is? 
# If not, what were the errors you encountered and what did you do to resolve them?

  # Yes it was.  Breaking everything down into simple steps that we were familiar with was helpful
  # We actually had more difficulty getting our code to pass with the refactoring than we did the 
  # initial code.  

# When you refactored, did you find any existing methods in Ruby to clean up your code?

  # Yes, we used .insert(x, y) which is a built in method.  When given two arguments it inserts the
  # second at the position provided by the first argument.


# How readable is your solution? Did you and your pair choose descriptive variable names?

  # Yes. This method did not require a lot of variables so naming them appropriately was 
  # easy.  This definitely helps with readability.

# What is the difference between destructive and non-destructive methods in your own words?

  # The most obvious difference between destructive and non-destructive methods is that destructive
  # methods use " ! " to differentiate the two.  Destructive methods also usually act similarly to
  # their non-destructive counter-parts with only a few minor differences. Mostly they overwrite 
  # the given variables as opposed to non-destructive which tend to return a new variable.  This 
  # isn't always the case, destructive methods don't need to be destructive in their nature. 
  # The term is more used for their slight differences to their non-destructive pair. 