def square
  print "Enter a number: "
  numb = gets.chomp.to_i
  op = numb * numb
  puts "Your number squared equals #{op}"
end

def listy
  print "Enter your first number: "
  one = gets.chomp.to_i
  print "Enter your second number: "
  two = gets.chomp.to_i
  print "Enter your last number: "
  three = gets.chomp.to_i
  numbers = [one, two, three]
  new_list = [numbers.sample, numbers.sample, numbers.sample]
  print "Your set of numbers is "
  print new_list
end
