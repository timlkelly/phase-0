# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# # Your Solution Below

# The top method is my final submission. Though this exercise really had me stumped for quite awhile.  Below is my refactored method as well as a lot of early attempts on this method.

def smallest_integer(list_of_nums)
  smallest = nil
    list_of_nums.each do |num|
      if smallest == nil
        smallest = num
      end
      if num <= smallest
        smallest = num
      end
    end
  smallest
end

# def smallest_integer(list_of_nums)
#   return list_of_nums.min
# end

# def smallest_integer(list_of_nums)
#   # if list_of_nums == []
#   #   p nil
#   # else
#     smallest = nil
#     list_of_nums.each do |num|
#       smallest = num if smallest == nil
#       if num <= smallest
#         smallest = num
#       end
#     end
#   #   p smallest
#   # end
#   return smallest
# end

# def smallest_integer(list_of_nums)
#   if list_of_nums == []
#   	p nil
#   else
#    	smallest = 0
#   	length = 0
#   	p1 = 0
#   	p2 = 1
#   	until length == list_of_nums.length
#   		puts "hello"
#   		if list_of_nums[length] < list_of_nums[p2]
#   			puts "the best"
#   			smallest = list_of_nums[length]
#   			p2 += 1
#   		else
#   			puts "whats ahppening"
#   			p1 += 1
#   			p2 += 1
#   			# yield (self [length])
#   		end
#   	end
#   	p smallest
#   end
# end


# # Your Solution Below
# def smallest_integer(list_of_nums)
#   if list_of_nums == []
#   	p nil
#   else
#   	length = 0
#   	until length == list_of_nums.length
#   		if list_of_nums[0] < list_of_nums[1]
#   			record = list_of_nums[0]

#   end
# end

# def smallest_integer(list_of_nums)
# 	if list_of_nums == []
# 		p nil
# 	else
# 		print list_of_nums
# 		loop do
# 			x = 0
# 			y = 1
# 			if list_of_nums[x] < list_of_nums[y]
# 				record = list_of_nums[x]
# 				y += 1 
# 			else
# 				x += 1
# 			end
# 			break if length == list_of_nums.length
# 			p record
# 		end
# 	end
# end


# def smallest_integer(list_of_nums)
# 	length = 0
# 	smallest = 0
# 	until length == list.length
# 		x = 0
# 		y = 1
# 		if list_of_nums == []
# 			p nil
# 		elsif list_of_nums[x] < list_of_nums[y]
# 			smallest = list_of_nums[x] 
# 			y += 1
# 		elsif list_of_nums[x] > list_of_nums[y]
# 			x += 1
# 			y += 1
# 		end
# 		p smallest
# 	end
# end


# def smallest_integer(list_of_nums)

# 	if list_of_nums == []
# 		p nil
# 	elsif list_of_nums[x] < list_of_nums[y]
# 		smallest = list_of_nums[x]
# 		y += 1
# 	elsif list_of_nums [x] > list_of_nums[y]
# 		x += 1
# 		y += 1
# 	end
# 	p smallest
# end
		
# def smallest_integer(list_of_nums)
# 	if list_of_nums == []
# 		p nil
# 	else	
# 		length = 0
# 		# loop do |z|
# 		# 	list_of_nums[z]
# 		# 	length += 1
# 		# 	z += 1
# 		# 	break if 
# 		until length == list_of_nums.length
# 			print list_of_nums
# 			x = 0
# 			y = 1
# 			smallest = 0
# 			if list_of_nums[x] < list_of_nums[y]
# 				smallest = list_of_nums[x]
# 				p smallest
# 				x += 1
# 				length += 1
# 			elsif list_of_nums[x] > list_of_nums[y]
# 				x += 1
# 				y += 1
# 				length += 1
# 			end

# 		end
# 	end
# end

# def smallest_integer(list_of_nums)
#   if list_of_nums = []
#     p nil
#   else
#     list_of_nums.sort
#     smallest = list_of_nums[0]
#     return smallest
#   end
# end


# def smallest_integer(list_of_nums)
#   if list_of_nums == []
#     p nil
#   else
#     smallest = 0
#     num1 = 0
#     num2 = 0
#     list_of_nums.each do |x, y|
#       num1 = list_of_nums[x]
#       num2 = list_of_nums[y]
#       if num1 < num2 
#         smallest = num1 

#       end
#     end
#   end
# end


# def smallest_integer(list_of_nums)
#   smallest = 0 
#   list_of_nums.each do |x|
#     smallest = list_of_nums[x]
#     if list_of_nums[x] < smallest
#       smallest = list_of_nums[x]
#     elsif list_of_nums[x] == []
#       p nil
#     end
#     p smallest
#   end
# end

# if list_of_nums[x] < list_of_nums[x+1]
#         smallest << list_of_nums[x]
#         puts "hi #{x}"
#       elsif list_of_nums[x] < smallest[]
#         x += 1
#       end
