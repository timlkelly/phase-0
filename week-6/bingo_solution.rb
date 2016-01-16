# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #Associate each letter to a number to be able to search through arrays

# Check the called column for the number called.
  #fill in the outline here
  #Navigate to the appropriate column and check all possibilities for a match
  #sort columns / rows by appropriate access index 

=begin
[[47, 44, 71, 8, 88],[22, 69, 75, 65, 73],[83, 85, 97, 89, 57],[25, 31, 96, 68, 51],[75, 70, 54, 80, 83]]
  0                   1                     2                     3                   4

          b    i   n  g  o
        [[47, 44, 71, 8, 88], 0
        [22, 69, 75, 65, 73], 1
        [83, 85, 97, 89, 57], 2
        [25, 31, 96, 68, 51], 3 
        [75, 70, 54, 80, 83]] 4
          0,  1,  2,  3,  4

        b1 = [0][0]   [row][column] | o1 = [0][4]
        b2 = [1][0]
        b3 = [2][0]
        b4 = [3][0]
        b5 = [4][0]
=end

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #Remove the matching element and replace with x

# Display a column to the console
  #fill in the outline here
  #is this not the same as the next? I guess I'm not clear on this step.

# Display the board to the console (prettily)
  #fill in the outline here
  #print out the new board

# Initial Solution

=begin
class BingoBoard
  attr_reader :bingo_board
  attr_accessor :letter, :number

  def initialize(board)
    @bingo_board = board
  end

  def generate
    # @letter = letter
    # @number = number
    columns = ["B", "I", "N", "G", "O"]
    puts "The lucky number is:"
    p @letter = columns.sample
    p @number = rand(1..100)
  end

  def check
    columns = { "B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4 }
    c = columns.fetch(letter)
    bingo_board.each do |n|
      n=0
      until n == 4
        num_to_check = bingo_board[n][c]
        if num_to_check == number
          bingo_board[n][c] = "X"
          p "MATCH"
        else
          n += 1
        end
      end
    end
    p bingo_board[0]
    p bingo_board[1]
    p bingo_board[2]
    p bingo_board[3]
    p bingo_board[4]
  end
end
=end

# Refactored Solution

class BingoBoard
  attr_reader :bingo_board, :columns
  attr_accessor :letter, :number

  def initialize(board)
    @bingo_board = board
  end

  def generate
    @columns = ["B", "I", "N", "G", "O"]
    @letter = columns.sample
    @number = rand(1..100)
    puts "The lucky number is: " + letter + " " + number.to_s
  end

  def check
  column_to_check = columns.index { |a| a == letter}
  bingo_board.each do |row|
    row=0
    until row == 4
      num_to_check = bingo_board[row][column_to_check]
      if num_to_check == number
        bingo_board[row][column_to_check] = "X"
        p "MATCH!"
        @game_board = bingo_board
      else
        row += 1
      end
    end
  end
    p bingo_board[0]
    p bingo_board[1]
    p bingo_board[2]
    p bingo_board[3]
    p bingo_board[4]
  end

  def display
    p bingo_board[0]
    p bingo_board[1]
    p bingo_board[2]
    p bingo_board[3]
    p bingo_board[4]
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.generate
new_game.check
new_game.generate
new_game.check
new_game.generate
new_game.check
new_game.generate
new_game.check
new_game.generate
new_game.check
new_game.generate
new_game.check
puts
new_game.display




#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  It was kindof difficult to pseudocode this challenge.  I think my pseudocode style is to 
  create a very brief outline, start coding, and then come back to fill it in.  I can't seem
  to really get my head into the problem while still being abstract about it during the pseudocode.
  It's also difficult to find a way to write pseudocode as English-y as possible.  But where's 
  the line really? I'm just not too sure how close to get sometimes.

What are the benefits of using a class for this challenge?
  The class let us call our methods on an instance of the game. It was also important because 
  Instance variables allowed us to separate the methods while still sharing information.

How can you access coordinates in a nested array?
  In this scenario you can access them in a column/row style.  The instance already gives us
  which column to look in, so I just needed to filter through the rows.

What methods did you use to access and modify the array?
  I used fetch and index to determine which column to search and each to go through the rows.

Give an example of a new method you learned while reviewing the Ruby docs. 
Based on what you see in the docs, what purpose does it serve, and how is it called?
  I read about the Enumerable Find method.  Find returns true if it finds the object specified
  in the block.  Here is an example of it being used: 

  (1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }

  So it is iterating through the range searching for a number that is divisible by both 7 and 5.
  I was hoping to use it when I refactored and while I believe I got it to work with sub-arrays,
  I then ran into trouble replacing the number with "X" because I did not have the location.

How did you determine what should be an instance variable versus a local variable?
  Instance variables are to be used throughout the class while local stay with the method they
  are created in.  I determine on which to use if the data needs to be shared by the whole instance.

What do you feel is most improved in your refactored solution?
  The way the checker method determines which column to search. Initially I created a Hash with each
  key set to a letter and value set to the column it was in. So B would return 0. When refactoring
  I realized that the array I used to pick a letter in the beginning is already doing that same job.
  I made it an instance variable so the checker could access it and match the picked letter back
  to the array and find it's index. Code wise it saved only one line but I did not have to create
  an unnecessary hash.

=end