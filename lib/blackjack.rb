def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type \'h\' to hit or \'s\' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  deal = first_card + second_card
  display_card_total(deal)
  deal
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    card_total
  elsif input == 'h'
    card_total += deal_card
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = hit?(initial_round)
  display_card_total(hand)
  if hand <= 21
    hit?(hand)
  else
    end_game(hand)
  end
end
    
