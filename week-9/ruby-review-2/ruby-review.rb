# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

=begin

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # change to downcase and separate each letter
  decoded_sentence = []
  cipher = {"e" => "a",   
            "f" => "b",   
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| #go through every letter of the coded message
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # go through every cypher 
      if x == y  # compare the coded message letter to the cypher list. x comes from input.each y from cipher.each_key
        decoded_sentence << cipher[y]
        found_match = true
        break  # breaks because it found the match for that letter. not sure why this is needed though. wouldn't it stop anyway because of the if statement? or maybe the each keeps it going.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # looking at other possible characters, just add a space if you find them
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # creates an array of 0-9. include checks if x is a number
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # i guess this checks if found_match is still false? not is confusing. look that up. but it adds the input into the message. if not seems to work like unless?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  # return the decoded message, all joined together. 
end

=end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  alphabet = ('a'..'z').to_a
  strange_character = ["@", "#", "$", "%", "^", "&", "*"]
  nums = (0..9).to_a

  input.each do |coded_letter|
    alphabet.each do |letter|
      if alphabet.include?(coded_letter)
        letter_index = alphabet.find_index(coded_letter)
        letter_index = letter_index -4
        decoded_sentence << alphabet[letter_index]
        break
      elsif strange_character.include?(coded_letter)
        decoded_sentence << " "
        break
      elsif nums.include?(coded_letter)
        decoded_sentence << coded_letter
        break
      else
        decoded_sentence << coded_letter
        break
      end
    end
  end
  decoded_sentence = decoded_sentence.join("")
end

# Driver Test Code:

p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."

p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"

p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."

p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."

p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"


# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin
What concepts did you review in this challenge?
  How to work with and access values in arrays, and ranges

What is still confusing to you about Ruby?
  It wasn't very confusing. This seemed pretty self-explanatory. The only part I struggled with was
  locating the index in the alphabet.

What are you going to study to get more prepared for Phase 1?
  Review object oriented disign

=end