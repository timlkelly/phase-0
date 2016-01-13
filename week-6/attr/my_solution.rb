#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: NameData
# Output: A greeting in STRING form
# Steps:
# create NameData and assign it's initial @NAME to Tim
# create Greetings. call a NameData method to initialize
# create hello METHOD which RETURNS the string

class NameData
  attr_reader :name

  def initialize
    @name = "Tim"
  end
end

class Greetings
  attr_reader :receiver

  def initialize
    @receiver = NameData.new
  end

  def hello
    p "Hello " + receiver.name + "! How wonderful to see you today!"
  end
end

greet = Greetings.new
greet.hello


# Reflection
=begin 
# RELEASE 1
What are these methods doing?
  The methods start by printing the provided name, age and occupation.
  The other listed methods in the class are getter/writer methods. Allowing
  the user to change the instance variables.

How are they modifying or returning the value of instance variables?
  The getter/writer methods are changing the instance variables in this particular
  instance.  Defining their names as "def method_name=(some_variable" let's us know
  that this is a getter/writer/setter method.  Yes the syntax does look a little wonky
  but I think it makes sense if you take a moment to read it.  Then in the body of the 
  method, it is reassigning the instance variable to the supplied argument.

# RELEASE 2  
What changed between the last release and this release?
  The method that returns the instance variable of age was replaced by a reader attribute.
  Additionally now that #what_is_age is gone, the method call for the age variable is now just .age
  In terms of the output, nothing has changed.

What was replaced?
  the what_is_age method was replaced by a reader attribute.

Is this code simpler than the last?
  I'd say so, yes.  There's less repetition and I think it helps with readability more.

# RELEASE 3
What changed between the last release and this release?
  This release removes the change_my_age method and as a result how that method is called.

What was replaced?
  call_my_age method was replaced with a writer attribute.

Is this code simpler than the last? 
  Yes, this change continues to simplify it.

# RELEASE 4  
# confused with the mixup in releases. refactored in release_5.rb and did canvas' release 5
# in the my_solution.rb
__________________
What is a reader method?
  A reader method returns the instance variable when it's method is called.

What is a writer method?
  A writer method reassigns the instance variable when provided with an argument

What do the attr methods do for you?
  The attr methods replace reader and writer methods. So you do not have to write them out
  every time.

Should you always use an accessor to cover your bases? Why or why not?
  No because if it doesn't need to write, it probably shouldn't have the ability to do so.
  No reason to give it more functionality if it isn't going to use it.

What is confusing to you about these methods?
  I sometimes get confused about the attr methods and that they allow me to call instance variables
  as local variables.

=end