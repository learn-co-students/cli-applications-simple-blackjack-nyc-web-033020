def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(10)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}" 
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  elsif user_input != 's'
    invalid_command
    hit?(card_total)
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = hit?(initial_round)
  display_card_total(cards)
  if cards < 22
    hit?(cards)
  else
    end_game(cards)
  end
end
    
