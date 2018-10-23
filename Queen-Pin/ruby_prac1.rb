# Q1. Modify the function 'greet' so that it asks where the user is from and greets them:
def greet
  print "What is your name?"
  name = gets.chomp
  print "What state are you from?"
  state = gets.chomp

  puts "Hello, #{name} from #{state}."
end
# Hello, John from New Hampshire!
#
# Q2. Write a function 'password' that asks the user for the first name of one of their parents, 
# and then their age. Then your program should add the two strings and output the result as a password, 
# as in:
# >
def password
 print "What is the first name of your parent?"
 parent = gets.chomp
 print "What is your age?"
 age = gets.chomp

 puts "Your new password is #{parent}#{age}."
end
# Your password is Becky22.
#
# Q3. Simulate the flip of a coin. Your output should look like:
# >
def coin
  options = ["Heads", "Tails"]
  pc_choice = options.sample
  puts "The computer flipped a coin. The computer flipped #{pc_choice.upcase}."
end
# The computer flipped tails.
#
# Q4. Write a program that allows the user to guess whether the computer will flip heads or tails, and
# then report if the guess was successful or not, as in:
# >
def coin2
  print "Heads or tails?"
  guess = gets.chomp
  options = ["Heads", "Tails"]
  pc_choice = options.sample
  puts "The computer flipped #{pc_choice.upcase}"
  
  if pc_choice == "Heads"
    if guess == "Heads"
      puts "You guessed correctly!"
    else
      puts "You guess incorrectly."
    end
  end
  if pc_choice == "Tails"
    if guess == "Tails"
      puts "You guessed correctly!"
    elsif guess == "Heads"
      puts "You guessed incorrectly."
    end
  end
end
# Choose heads or tails:  tails
# The computer flipped heads.
# You guessed correctly!
