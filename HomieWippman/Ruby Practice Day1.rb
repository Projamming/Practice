# puts "Hello"
# puts "Jiin"
# print "Hello"
# print "Jiin"

# This command allows you to interact with the user:

# print "What's your name?"
# input = gets.chomp
# puts input.downcase
# puts input.upcase

# print "What's your age?"
# input = gets.chomp

# Integer.
# puts 40 + 20
# puts 40 + "20".to_i
# puts 40.to_s + "20"
# puts "4020"

# def greet
#   print "What is your name? "
#   user_name = gets.chomp
#   puts "Hello, #{name}"
# end

# def until100
#   print "Current age: "
#   age = gets.chomp
#   year100 = 2018 + (100 - age.to_i)
#   puts "You will be 100 in year 
#   #{year100}."
# end

# #Rock Paper Scissor with the Computer
# def rock_paper_scissor
#   print "Rock Paper or Scissors "
#   response = gets.chomp

#   #LIST
#   options = ["Rock", "Paper", "Scissor"]
#   pc_choice = options.sample
#   puts "You chose #{response.upcase}"
#   puts "The computer chose #{pc_choice.upcase}"

#   #IF STATEMENTS
#   #If the computer chose Rock:
#   if pc_choice == "Rock"
#     if response == "Paper"
#       puts "Win! :)"
#     elsif response == "Rock"
#       puts "Tie"
#     else
#       puts "Lose"
#     end

#  #If the computer chose Paper:
#   elsif pc_choice == "Paper"
#     if response == "Scissor"
#       puts "Win~ :)"
#     elsif response == "Paper"
#       puts "Tie"
#     else
#       puts "Lose"
#     end

# #If the computer chose Scissor:
#   else
#     if response == "Rock"
#       puts "Win"
#     elsif response == "Scissor"
#       puts "Tie"
#     else
#       puts "Lose"
#     end
#   end
# end

#Q1
# def greet
#   print "What is your name? "
#   user_name = gets.chomp
#   puts "Hello, #{user_name}."

#   print "Where are you from? "
#   user_place = gets.chomp
#   puts "I love #{user_place}!"
# end

#Q2
# def password
#   print "What is the name of one of your parents? "
#   user_parent_name = gets.chomp

#   print "What is your parent's age? "
#   user_parent_age = gets.chomp

#   new_password = user_parent_name + user_parent_age
#   puts "Your password is #{new_password}."
# end

#Q3
# # Coin Flip Simulation
# def heads_tails
#   print "Heads or Tails? "
#   response = gets.chomp

#   options = ["Heads", "Tails"]
#   pc_choice = options.sample
#   puts "You chose #{response.upcase}"
#   puts "The computer flipped #{pc_choice.upcase}"

#   #IF STATEMENTS
#   #If the computer chose Heads:
#   if pc_choice == "Heads"
#     if response == "Heads"
#       puts "Win! :)"
#     elsif response == "Tails"
#       puts "Lose"
#     end

#  #If the computer chose Tails:
#   elsif pc_choice == "Tails"
#     if response == "Tails"
#       puts "Win~ :)"
#     elsif response == "Heads"
#       puts "Lose"
#     end
#   end
# end
