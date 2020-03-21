require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
method = gets.chomp
end

def end_game(n)
  if n > 21 
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(user_hand)
  prompt_user
  user_input = get_user_input

  if user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == 'h'
    new_card = deal_card
    user_hand += new_card
  elsif user_input == 's'
    user_hand
  end
  user_hand
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
