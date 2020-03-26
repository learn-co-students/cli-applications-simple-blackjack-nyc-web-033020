def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp.strip
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  round_one = deal_card + deal_card
  display_card_total(round_one)
  return round_one
end

def hit?(total)
  # code hit? here
  possible_input = ["h", "s"]
  prompt_user
  user_input = get_user_input
  
  until possible_input.include?(user_input)
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  
  if user_input == "h"
    total += deal_card
    elsif user_input == "s"
      total
  end
  total
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
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
