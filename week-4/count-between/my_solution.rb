# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# Initial attempt.  passed 4 out of 6.

# def count_between(list_of_integers, lower_bound, upper_bound)
#   count = 0
#   list_of_integers.each do |nums|
#     if nums >= lower_bound
#       count += 1
#     elsif nums <= upper_bound
#       count += 1
#     else
      
#     end
#   end
#   count
# end

# 2nd pass.  passes remaining tests, fixes counting number on opposite bound

def count_between(list_of_integers, lower_bound, upper_bound)
  count = 0
  list_of_integers.each do |nums|
    if nums >= lower_bound && nums <= upper_bound
      count += 1
    end
  end
  count
end
