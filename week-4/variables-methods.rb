puts "What's your first name?"
first = gets.chomp

puts "Okay, great. Now how about your middle name?"
middle = gets.chomp

puts "Yeah? What's your last name?"
last = gets.chomp

puts "Welcome " + first + " " + middle + " " + last + "!"
puts "Alright " + first + " " + last + " what's your favorite number?"
fav_num = gets.chomp.to_i

better_num = fav_num + 1

puts "Oh? but don't you think " + better_num.to_s + " is a bigger, better number?"