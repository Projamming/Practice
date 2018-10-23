# A simple rock, paper, scissors game for REPL RUBY.

def rock_paper_scissors

  # Intro
  puts "Rock, Paper, Scissors, Shoot!"
  player = gets.chomp

  options = ["Rock", "Paper", "Scissors"]
  computer = options.sample


  # Results
  puts "You chose #{player.upcase}"
  puts "Computer chose #{computer.upcase}"

  # "If" Statements
  if player == "Rock"
    if computer == "Paper"
    puts "You lost. :("
    elsif computer == "Scissors"
    puts "You won! :)"
    else computer == "Rock"
    puts "It's a tie. :/"
    end
  end

  if player == "Paper"
    if computer == "Scissors"
    puts "You lost. :("
    elsif computer == "Rock"
    puts "You won! :)"
    else computer == "Paper"
    puts "It's a tie. :/"
    end
  end

  if player == "Scissors"
    if computer == "Rock"
    puts "You lost. :("
    elsif computer == "Paper"
    puts "You won! :)"
    else computer == "Scissors"
    puts "It's a tie. :/"
    end
  end

end
