# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true or false
# Steps:
# INITIALIZE class, and check if CC number is 16 digits
# otherwise RAISE error
# Enter CC number into a container to work with
# Double every other digit started at 2nd to last until beginning
# Seperate any double digits into single digits and find sum
# check IF it is a multiple of 10


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  attr_reader :cc, :cc_array
  attr_writer :cc_array
  
  def initialize(number)
    @cc = number
    @cc_array = @cc.to_s.split(//)
    if cc_array.size != 16
      raise ArgumentError.new("Not a valid Credit Card number!")
    end
  end
  
  def check_card
    cc_array.map! { |num| num.to_i}
    cc_array.map!.with_index do |num, index|
      if index.even?
        (num *= 2).to_s.split(//)
      else
        num
      end
    end
    cc_array.flatten!
    p cc_array.map! { |num| num.to_i}
    total = 0
    cc_array.each { |num| total += num}
      if total % 10 == 0
        true
      else
        false
      end
    end
  
end
=end


# Refactored Solution

class CreditCard
  attr_reader :cc
  attr_accessor :cc_array
  
  def initialize(number)
    @cc = number
    @cc_array = cc.to_s.split(//)
    raise ArgumentError.new("Not a valid Credit Card number!") if cc_array.size != 16
  end
  
  def check_card
    cc_array.map! { |num| num.to_i}
    cc_array.map!.with_index do |num, index|
      if index.even?
        (num *= 2).to_s.split(//)
      else
        num
      end
    end
    cc_array.flatten!.map! { |num| num.to_i}
    total = 0
    cc_array.each { |num| total += num}
    total % 10 == 0 ? true : false
    end
end


sample = 1234567890123456
test = CreditCard.new(sample)
test.check_card

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  We got stumped on moving the data between methods and also all of the converting between 
  integers and strings.

What new methods did you find to help you when you refactored?
  I didn't find any methods that actually helped my refactor, though I did research
  some interesting methods.  I found .flat_map, an enumerable method, which I was
  really hoping could have replaced line 82.  I couldn't get it to work though.

What concepts or learnings were you able to solidify in this challenge? 
  This helped with having more familiarity with the instance variables. Though I think
  more couldn't hurt.  
=end