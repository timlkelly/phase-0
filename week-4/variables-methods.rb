puts "Hi there. What's your first name?"
first = gets.chomp

puts "Yeah? What's your last name?"
last = gets.chomp

puts "Oh I forgot to ask.  What's your middle name??"
middle = gets.chomp

puts "Welcome " + first + " " + middle + " " + last + "!"
puts
puts "Alright " + first + " " + last + " what's your favorite number?"
fav_num = gets.chomp.to_i

better_num = fav_num + 1

puts "Oh? but don't you think " + better_num.to_s + " is a bigger, better number?"


=begin

4.3.1 Return a Formatted Address 
	
	https://github.com/timlkelly/phase-0/blob/master/week-4/define-method/address/my_solution.rb

4.3.2 Defining Math Methods
	
	https://github.com/timlkelly/phase-0/blob/master/week-4/math/my_solution.rb

How do you define a local variable?

	A local variable is a variable that you can set to integers, strings or even nothing.  

How do you define a method?

	A method is created using def.  It would look something like this:

		def method_name(arguments)
			codeblock
		end

What is the difference between a local variable and a method?

	A method can be called outside of its program (or file? I guess I'm not clear on that) while a local variable is confined to the file it is in.  Additonally a method can execute a block of code while a variable is really just a container for something.

How do you run a ruby program from the command line?

	While in the same directory as the ruby file type "ruby filename.rb" into the terminal

How do you run an RSpec file from the command line?

	Again, when you're in the same directory as the file type "rspec filename.rb" into the terminal.  This definitely stumped me once on this exercise. I just wasn't thinking about it and typed ruby and not rspec.  Now I know.


What was confusing about this material? What made sense?

	It was sometimes confusing to know when a variable is a string or a integer.  For instance in the above exercise on line 16 I originally thought I could just call better_num without converting it.  Not a huge setback, I realized what I did right away.



=end
