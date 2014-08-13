def print_winner_msg(msg)
  case msg
  when 'p'
    puts "Paper wraps Rock!"
  when 's'
    puts "Scissors cut Paper"
  when 'r'
    puts "Rock breaks Scissors"
  end
end

CHOICE = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

begin
  begin
    puts "Choose one: (P/R/S)"
    choice = gets.chomp.downcase   #stored player's choice
  end  until CHOICE.keys.include?(choice)

  com_choice = CHOICE.keys.sample   #computer chooses randomly in an array
  puts "You picked #{CHOICE[choice]} and computer picked #{CHOICE[com_choice]}"
  
    if choice == com_choice
      puts "It's tie."
    elsif (choice == "p" && com_choice == "r") || (choice == "r" && com_choice == "s") || (choice == "s" && com_choice == "p")
      print_winner_msg(choice)
      puts "You won!"
    else
      print_winner_msg(com_choice)
      puts "Computer won!"
    end

    puts "Play again? (Y/N)"
    decision = gets.chomp.downcase
end while decision == 'y'