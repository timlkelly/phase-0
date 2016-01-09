=begin
Pseuodocode

-Create a container
-Enter everyone's name
-sort into groups of at least 3, preferably 4-5
-print group lists

=end

names = [ "Dong Wook Seo", "Aaron Hu", "Adamn Pinksy", "Akeem Street", "Alex Forger", "Andrew Kim", 
  "Baron Kwan", "Brain Bier", "Byron Gage", "Carl Conroy", "Charlie Bliss", "Christopher Bunkers", 
  "Cody Kendall", "Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden",
  "Hagai Zwick", "Heather Conklin", "Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd",
  "Jasmeet Chatrath", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathan Case", "Jonathan Schwartz",
  "Jonathan Silvestri", "Kathryn Garbacz", "Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Linda Oanh Ho",
  "Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", 
  "Mollie Stein", "Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis", "Prince Sadie", 
  "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken", "Emmet Susslin", "Sydney Rossman-Reich", 
  "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", "Tyler Doerschuk"]

# cleaned up code, additional code modifies group size dependent on total names in pool.
# will default to 3 if not evenly divisible by 5, 4, or 3. Change printed list display
# change to method structure. rename some variables

def make_groups(name_array)
  groups = Hash.new
  total = name_array.length
  total_counter = 0
  group_num = 1
  group_counter = 0
  group_size = 0
  name = ""

  if total % 5 == 0
    group_size = 5
  elsif total % 4 == 0
    group_size = 4
  elsif total % 3 == 0
    group_size = 3
  else
    group_size = 3
  end

  until total_counter == total
    if group_counter < group_size
      name = name_array.sample(1)
      if groups.key?(name) == false
        groups[name] = group_num
        total_counter += 1
        group_counter += 1
      end
    else
      group_num += 1
      group_counter = 0
    end
  end

  sorted = groups.sort_by { |k, v| v }
  sorted.each { |name, group| puts "Group #{group}: #{name}" }
end

make_groups(names)

# Coded with more methods, results are now random, used both hash/array

# groups = Hash.new
# total = names.length
# total_counter = 0
# group_num = 1
# group_counter = 0
# group_size = 0
# name = ""

# until total_counter == total
#   if group_counter < 4
#     name = names.sample(1)
#     if groups.key?(name) == false
#       groups[name] = group_num
#       total_counter += 1
#       group_counter += 1
#       #debuggin code
#       # puts "person no. #{total_counter} into group #{group_num} person #{group_counter} " 
#       # puts groups
#     end
#   else
#     group_num += 1
#     group_counter = 0
#   end
# end

# sorted = groups.sort_by { |k, v| v }
# sorted.each do |name, group|
#   puts "#{name} is in group #{group}"
# end


# Initial Solution

# group1 = []
# group2 = []
# group3 = []
# group4 = []
# group5 = []
# group6 = []
# group7 = []
# group8 = []
# group9 = []
# group10 = []
# group11 = []
# group12 = []
# group13 = []
# group14 = []

# names.each do |x|
#     if group1.size < 4
#       group1 << x
#     elsif group2.size < 4
#       group2 << x
#     elsif group3.size < 4
#       group3 << x
#     elsif group4.size < 4
#       group4 << x
#     elsif group5.size < 4
#       group5 << x
#     elsif group6.size < 4
#       group6 << x
#     elsif group7.size < 4
#       group7 << x
#     elsif group8.size < 4
#       group8 << x
#     elsif group9.size < 4
#       group9 << x
#     elsif group10.size < 4
#       group10 << x
#     elsif group11.size < 4
#       group11 << x
#     elsif group12.size < 4
#       group12 << x
#     elsif group13.size < 4
#       group13 << x
#     elsif group14.size < 4
#       group14 << x
#   end
# end

# puts "Group One:"
# puts group1
# puts
# puts "Group Two:"
# puts group2
# puts
# puts "Group Three"
# puts group3
# puts
# puts "Group Four:"
# puts group4
# puts
# puts "Group Five:"
# puts group5
# puts
# puts "Group Six:"
# puts group6
# puts
# puts "Group Seven:"
# puts group7
# puts
# puts "Group Eigh"
# puts group8
# puts
# puts "Group Nine:"
# puts group9
# puts
# puts "Group Ten:"
# puts group10
# puts
# puts "Group Eleven:"
# puts group11
# puts
# puts "Group Twelve:"
# puts group12
# puts
# puts "Group Thirteen"
# puts group13
# puts
# puts "Group Fourteen:"
# puts group14


=begin
What was the most interesting and most difficult part of this challenge?
  Finding a way to make my code more efficient.  The initial solution worked but it wasn't
  adaptable and rather clunky.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Yes, some. I think I was more accurate about my pseudocode but I think it could use more details.
  I'm not exactly how to do that when I being a project without writing it too technical.

Was your approach for automating this task a good solution? What could have made it even better?
  I think so, but it is a little did feel like I had to patch it up with more if statements. I'm sure
  there's a more efficient solution than mine probably using more methods

What data structure did you decide to store the accountability groups in and why?
  I stored the groups as a single hash, assigning each name to a key and the group number to the value.
  I considered storing them in multiple arrays or hashes (one for each group), but I thought that was going
  to get cumbersome.  

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I became more familiar with .each and learned about .sample, which is an array method that groups a random
  element from inside of your array. 

=end