# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Akeen Street ]

# I spent [4.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) Array with most common inputs
# What are the steps needed to solve the problem?
  # Define the method
  # Create a Hash to store the input array
  # compare the values in the Hash
  # Compile an array of the values
  # Return the array


# 1. Initial Solution

# First attempt. while loop resulted in infinite loop.
# could not find a way to break loop. converted to if
# statement

# def mode(input_array)
#   counting_hash = Hash.new
#   input_array.each do |x|
#     counting_hash[x] = 0
#     while counting_hash.key?(x)
#       counter = counting_hash[x]
#       counting_hash[x] = counter
#       counter += 1
#       counting_hash[x] = counter
#       # break if counting_hash[x] == input_array[-1]
#     end
#   end
#   p counting_hash
# end

 # counting_hash.select do |k, v|
  #   v == max_value
  # end


def mode(input_array)
  counting_hash = Hash.new
  input_array.each do |x|
    if counting_hash.key?(x)
      counter = counting_hash[x]
      counter += 1
      counting_hash[x] = counter
    else
      counting_hash[x] = 0
      counter = counting_hash[x]
      counter += 1
      counting_hash[x] = counter
    end
  end
  max_value = counting_hash.values.max
  val_arr = []
  counting_hash.each do |k, v|
    if v == max_value
      val_arr << k
    end
  end
  p val_arr
end



# 3. Refactored Solution

# def mode(input_array)
#   counting_hash = Hash.new
#   input_array.each do |x|
#     if counting_hash.key?(x)
#       counter = counting_hash[x]
#       counter += 1
#       counting_hash[x] = counter
#     else
#       counting_hash[x] = 0
#       counter = counting_hash[x]
#       counter += 1
#       counting_hash[x] = counter
#     end
#   end
#   max_value = counting_hash.values.max
#   val_arr = []
#   counting_hash.each do |k, v|
#     val_arr << k if v == max_value
#   end
#   p val_arr
# end





# 4. ReflectionWhich data structure did you and your pair decide to implement and why?

=begin
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yes and no.  I think we did a good job breaking down some of the steps but not all of the steps. Additionally
I don't think we broke them down into small enough steps.  It's becoming a little more clear about the amount 
of pseudocoding is required.  I think we didn't give it enough time.


What issues/successes did you run into when translating your pseudocode to code?

I don't think we specified a way to enter values into the hash or about sorting through the hash.


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? 
Were they difficult to implement?

We looked into select, but was unable to use it effectively.



=end