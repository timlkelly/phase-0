# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# define our new list

#   [fill in any steps here]
#   set default quantity
#   print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

sample = "apple orange pizza"

# def create_list(items)
#   hash_list = Hash.new(0)
#   list_arr = items.split(" ")
#   list_arr.each do |x|
#     hash_list[x] = 1
#   end
#   return hash_list
# end

# hash_list = create_list(sample)
# p hash_list
# # Method to add an item to a list
# # input: item name and optional quantity
# # steps:
# # ask for item name
# # ask for quantity
# # move item name and quantity to the list
# # output: A hash key/value pair

# def add_item(item, list, quantity)
#     list[item] = quantity
# end 

# add_item("x", hash_list, 1)
# p hash_list

# # Method to remove an item from the list
# # input: Item name 
# # steps:
# # ask for item name
# # remove item from list
# # output: the item to remove

# def remove_item(list,item)
#   list.delete(item)
# end

# remove_item(hash_list, 'x')
# p hash_list

# # Method to update the quantity of an item
# # input: Item name / quantity
# # steps:
# # ask for item name
# # ask for new quantity
# # amend new item name/quantity to list
# # output:

# def update_quantity(list, item, quantity)
#   list[item] = quantity
# end
# update_quantity(hash_list, "orange", 20)
# p hash_list
  

# # Method to print a list and make it look pretty
# # input: the list
# # steps:
# # add text to list output
# # Print out list data
# # output: the list

# def print_list(list)
#   puts "You need:"
#   list.each do |k, v|
#     puts "#{v} #{k}!"
#   end
# end

# print_list(hash_list)


#  Refactor

def create_list(items)
  hash_list = Hash.new(0)
  list_arr = items.split(" ")
  list_arr.each { |item| hash_list[item] = 1 }
  hash_list
end

def remove_item(list,item)
  list.delete(item)
end

def update_quantity(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each { |item, quantity| puts"You need: #{quantity} #{item}!" }
end

hash_list = create_list(sample)
p hash_list

remove_item(hash_list, 'x')
p hash_list

update_quantity(hash_list, "orange", 20)
p hash_list

print_list(hash_list



=begin
What did you learn about pseudocode from working on this challenge?
  I'm still getting the hang of pseudocoding.  It's difficult to break everything down 
  into small steps but also predict what you are going to need. Perhaps I need to 
  pseudo-code a little more abstractly. 

What are the tradeoffs of using Arrays and Hashes for this challenge?
  We only used a Hash, though I imagine that arrays miss out on the custom named keys.
  Hashes' named keys seem to be very useful for counting specific items

What does a method return?
  A method will return the last evaluated line of itself

What kind of things can you pass into methods as arguments?
  Any object, this includes variables, hash, array, integer, string

How can you pass information between methods?
  You can move information through objects located outside of the method by setting a variable
  to that of a method call.  Further methods will continue to update this outside variable
  because they are destructive and are set to return the variable.

What concepts were solidified in this challenge, and what concepts are still confusing?
  The outside variable definitely makes a bit more sense now.  Would this be considered a global 
  variable? I guess the exact flow of the variable as it's returned from other methods isn't 
  quite clear.  I understand it vaguely but it still seems a little fuzzy.

  
end