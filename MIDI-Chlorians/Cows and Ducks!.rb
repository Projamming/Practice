def cows_and_ducks

  print "How many ducks do you have?"
  num_ducks = gets.chomp.to_i
  puts "You have #{num_ducks} ducks."

  puts "How many cows do you have?"
  num_cows = gets.chomp.to_i
  puts "You have #{num_cows} cows."

  puts "______"

  if num_ducks > num_cows
    puts "Ducks prevail!"
    puts "______"
      num_ducks.times do
        puts "Quack!"
        sleep 0.5
      end
  end

  if num_ducks < num_cows
    puts "Cows prevail!"
    puts "______"
      num_cows.times do
        puts "Moo!"
        sleep 0.5
      end
  end

  if num_ducks == num_cows
    puts "Peace!"
    puts "______"
      num_ducks.times do
        puts "Quack!"
        sleep 0.5
      end
      num_cows.times do
        puts "Moo!"
        sleep 0.5
      end
  end

end
