# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #use methods, ranges, and random to pick a letter and number

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

class BingoBoard
  attr_reader :bingo_board
  attr_accessor :letter, :number

  def initialize(board)
    @bingo_board = board
  end

  def pull
    # @letter = letter
    # @number = number
    columns = ["B", "I", "N", "G", "O"]
    puts "The lucky number is:"
    p @letter = columns.sample
    p @number = rand(1..100)
  end

  def checker
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

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.pull
new_game.checker




#Reflection