# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  shortest = nil
  list_of_words.each do |word|
    if shortest == nil
      shortest = word
    end
    if word.length <= shortest.length
      shortest = word
    end
  end
  shortest
end

# Initial pass. Worked except it compares position, rather than length

# def shortest_string(list_of_words)
#   shortest = nil
#   list_of_words.each do |word|
#     if shortest == nil
#       shortest = word
#     end
#     if word <= shortest
#       shortest = word
#     end
#   end
#   shortest
# end



