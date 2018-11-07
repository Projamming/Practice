# Q1: Conversion
kilos_to_pounds = 2.205
pounds_to_kilos = 0.454
puts "1. From kilograms to pounds"
puts "2. From pounds to kilograms"
print "Choose the conversion you want to make: "
choice = gets.chomp.to_i
if choice == 1
  user_to = "kilograms"
  user_from = "pounds"
elsif choice == 2
  user_to = "pounds"
  user_from = "kilograms"
else
  puts "INVALID ENTRY. Please enter 1 or 2."
  exit
end
print "Enter a number of #{user_to}: "
user_num = gets.chomp.to_i
if choice == 1
  result = user_num * kilos_to_pounds
else
  result = user_num * pounds_to_kilos
end
puts "There are #{result} #{user_to} in #{user_num} #{user_from}."

# Q2: Rings
my_list = [1, 2, 4, 0]
3.times do
  print my_list.join(' ') + " "
end

# Q3: Scrambled Words
print "Enter a word: "
word = gets.chomp.upcase
n = word.length.to_i
scram = word[0] + word[1, n-2].chars.shuffle.join + word[n-1]
puts "Scrambled version: #{scram}"
