# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb

# 2. What is the line number where the error occurs?
# => 170

# 3. What is the type of error message?
# => syntax error

# 4. What additional information does the interpreter provide about this type of error?
# => There is an unexpected end of input, ruby expected 'end'

# 5. Where is the error in the code?
# => On line 16 after the end, there should be another end

# 6. Why did the interpreter give you this error?
# => The interpreter is attempting to define method carman_hates(), which includes a while loop.  The user closed the while loop but did not close the method definition.  It does not know where/when the method ends.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 35

# 2. What is the type of error message?
# => name error

# 3. What additional information does the interpreter provide about this type of error?
# => south_park is not a defined variable or method that the interpreter can call

# 4. Where is the error in the code?
# => 'south_park' on line 35 is the error as a whole

# 5. Why did the interpreter give you this error?
# => Because the interpreter does not know what south_park is or what to do with it.  

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 59

# 2. What is the type of error message?
# => NoMethodError

# 3. What additional information does the interpreter provide about this type of error?
# => That there is no cartman method defined.

# 4. Where is the error in the code?
# => The error is that the user has not defined a method called cartman but is trying to call it.  The error is above line 59 where the cartman method should be defined.

# 5. Why did the interpreter give you this error?
# => This error as raised because the interpreter attempted to call the cartman method with no arguments however the method does not exist so it can not run anything. 

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 78

# 2. What is the type of error message?
# => Argument Error

# 3. What additional information does the interpreter provide about this type of error?
# => That the wrong number of arguments where called.  It expects 0 arguments but was given 1.

# 4. Where is the error in the code?
# => The error is on line 82 in between the parenthesis.  To use the method as it is it should not be called with any arguments.

# 5. Why did the interpreter give you this error?
# => Because the program attempted to run the cartmans_phrase method with the argument of 'I hate Kyle' but the cartmans_phrase method does not ask for an argument.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 101

# 2. What is the type of error message?
# => Argument Error

# 3. What additional information does the interpreter provide about this type of error?
# => That it expects 1 argument but was given 0 arguments

# 4. Where is the error in the code?
# => on line 105 after cartman_says there should be an argument called like this: cartman_says("don't forget to call your arguments!")

# 5. Why did the interpreter give you this error?
# => Because the method cartman_says is expecting an argument to be provided and without one it cannot run.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 126

# 2. What is the type of error message?
# => Argument Error

# 3. What additional information does the interpreter provide about this type of error?
# => Expected 2 arguments but only received 1

# 4. Where is the error in the code?
# => On line 130 after the first string there should be a comma and another string. 

# 5. Why did the interpreter give you this error?
# => Because to run the method cartmans_lie correctly it requires two arguments. However only one was provided. 

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 149

# 2. What is the type of error message?
# => TypeError

# 3. What additional information does the interpreter provide about this type of error?
# => That the string can not be changed into a Fixnum; Basically that it is trying to use the * operator incorrectly.

# 4. Where is the error in the code?
# => The * on line 149

# 5. Why did the interpreter give you this error?
# => Because this code is attempting to multiple 5 by "Respect my authoritay".  Which just doesn't work, or make sense.  Integers can't be multiplied by strings.  Although strings can be multiplied by numbers.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 168

# 2. What is the type of error message?
# => ZeroDivisionError

# 3. What additional information does the interpreter provide about this type of error?
# => That the / operator is being used incorrectly

# 4. Where is the error in the code?
# => The zero after the / on line 168 is the error

# 5. Why did the interpreter give you this error?
# => The interpreter is attempting to divide 20 into 0, which is not a number.  No number can be divided by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 188

# 2. What is the type of error message?
# => LoadError

# 3. What additional information does the interpreter provide about this type of error?
# => That there is no such file called "cartmans_essay.md" inside this directory

# 4. Where is the error in the code?
# => I'm not quite sure where to say the error is.  Is it that the user didn't supply the required file or that the user is calling for something they know does not exist?  Either way both result in the error.  Or the error could be that the file does exist but is stored in another directory and the location is not provided.

# 5. Why did the interpreter give you this error?
# => Interpreter is looking for a file that does not exist, resulting in error


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# 	probably the first or third error.  The first had me confused at first because the error was so distant from the code I was looking at but made sense quickly.  The third because at first I thought they were attempting to write a method not call one. A little method review cleared that right up.

# How did you figure out what the issue with the error was?
	
# 	Some of the errors were very easy to make sense.  The math errors came right away because of the Chris Pine reading, which uses similar examples.  Other times I used IRB to double check my theory on the error and how it should opperate.


# Were you able to determine why each error message happened based on the code? 

# 	Yes, well at least I think so.  Perhaps I was reading into the erros a little too much, as I example in question 4 on the last error, but sometimes it was difficult to point to an exact spot that caused the error as there could be different ways of fixing it. I suppose I should go with the solution that doesn't change the prompt.


# When you encounter errors in your future code, what process will you follow to help you debug?

# 	In the future I will first obviously read the error log and examine the code that it refers to.  After that I would probably try using IRB or looking up how certain code works using the ruby-doc website, which I used once during this exercise.


