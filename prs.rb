def tie
  puts "It's a tie."
end

def paper_w_rock
  puts "Paper wraps Rock!"
end

def scissors_c_paper
  puts "Scissors cut Paper"
end

def rock_b_scissors
  puts "Rock breaks Scissors"
end

def com_win
  puts "Computer won!"
end

def you_win
  puts "You won!"
end

puts "Play Paper Rock Scissors!"

begin
  begin
    puts "Choose one: (P/R/S)"
    choice = gets.chomp   #stored player's choice
    com_choice = ["Paper", "Rock", "Scissors"].sample   #computer chooses randomly in an array

    if choice == 'P' || choice == 'p'
      pick = "Paper"
      break
    elsif choice == 'R' || choice == 'r'
      pick = "Rock"
      break
    elsif choice == 'S' || choice == 's'
      pick = "Scissors"
      break
    end
  end while true

  puts "You picked #{pick} and computer picked #{com_choice}"
  
    if pick == "Paper" && com_choice == "Paper" || pick == "Rock" && com_choice == "Rock" || pick == "Scissors" && com_choice == "Scissors"
      tie
    elsif pick == "Paper" && com_choice == "Rock"
      paper_w_rock
      you_win
    elsif pick == "Rock" && com_choice == "Paper"
      paper_w_rock
      com_win
    elsif pick == "Paper" && com_choice == "Scissors"
      scissors_c_paper
      com_win
    elsif pick == "Scissors" && com_choice == "Paper"
      scissors_c_paper
      you_win
    elsif pick == "Rock" && com_choice == "Scissors"
      rock_b_scissors
      you_win
    else
      rock_b_scissors
      com_win
    end

    puts "Play again? (Y/N)"
    decision = gets.chomp
end while decision == 'Y' || decision == 'y'
      
    