#TITLE: Ruby Without Music
#FILE: P6-asherman.rb
#AUTHOR: HomieWippman
#DATE: 10/31/18
#DESC: Version 1.0

#Credit due to Jiin who helped me during office hours. It was awesome working with her and she showed me how to code the answers to the questions in a succinct manner, a skill I am continually trying to improve upon.

#Question 1: Conversion
#Function converts pounds to kilograms and vice versa.
def conversion
 kilos_to_pounds = 2.205
 pounds_to_kilos = 0.454

 puts "1. From kilograms to pounds"
 puts "2. From pounds to kilograms"
 print "Choose the conversion number (1 or 2) you want to make: "
 response = gets.chomp.to_i

 if response == 1
   print "Enter a number of kilograms: "
   user_num = gets.chomp.to_i
   result = user_num * kilos_to_pounds
   user_from = "kilograms"
   user_to = "pounds"

 elsif response == 2
   print "Enter a number of pounds: "
   user_num = gets.chomp.to_i
   result = user_num * pounds_to_kilos
   user_from = "pounds"
   user_to = "kilograms"
 end

 puts "There are #{result} #{user_to} in #{user_num} #{user_from}."
end

#Question 2: Conversion
#Function uses a list to produce a ring of various desired outputs.
def rings
 my_list = [6, 5, 3, 1]
 3.times do
   index = 0
   my_list.length.times do
     print my_list[index].to_s + " "
     index += 1
   end
 end
end

#Question 3: Scrambled Words
#Function takes a word given by the user and scrambles all of its letters, excluding the first and last letter of the word (which remain the same). 
def scrambled_words
 print "Enter a word: "
 response = gets.chomp
 scrambled_version = response[0] + response[1..-2].chars.shuffle.join + response[-1]
 puts "Scrambled version: #{scrambled_version}"
end

