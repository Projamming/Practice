# Guessing game between 1 and 100, for Repl Ruby.

def guessing

  ai_range = (1 ... 100).to_a
  num = ai_range.sample

  loop do
    puts "What is my number?"
    guess = gets.chomp.to_i
      if guess > num
        puts "Lower!"
      elsif guess < num
        puts "Higher!"
      else guess == num
        puts "Yes! You win!"
        break
      end
  end
  
end
