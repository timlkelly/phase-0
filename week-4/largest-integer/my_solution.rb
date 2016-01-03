# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

# original 

def largest_integer(list_of_nums)
  largest = nil
  list_of_nums.each do |num|
    if largest == nil
      largest = num
    end
    if num >= largest
      largest = num
    end
  end
  largest
end

# original refactored first pass

# def largest_integer(list_of_nums)
#   largest = list_of_nums.first
#   list_of_nums.each do |num|
#     if num >= largest
#       largest = num
#     end
#   end
#   largest
# end

# original refactored second pass

# def largest_integer(list_of_nums)
#   largest = list_of_nums.first
#   list_of_nums.each { |num| largest = num if num >= largest}
#   largest
# end

# simple refactor 

# def largest_integer(list_of_nums)
#   return list_of_nums.max
# end
