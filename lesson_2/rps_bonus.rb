VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_ABBREVS = ['r', 'p', 'sc', 'l', 'sp']
VALID_YES_NO = ['yes', 'y', 'no', 'n']
MAX_WINS = 3
RULES = "Scissors cuts Paper \n Paper covers Rock \n Rock crushes Lizard \n Lizard poisons Spock \n Spock smashes Scissors \n Scissors decapitates Lizard \n Lizard eats Paper \n Paper disproves Spock \n Spock vaporizes Rock \n and as always Rock crushes Scissors."

WINNING_COMBINATIONS = {
  rock: ['lizard', 'scissors'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['paper', 'spock'],
  spock: ['scissors', 'rock']
}

SCORES = {
  player_score: 0,
  computer_score: 0
}

def abbrev_to_choice(abbrev)
  case abbrev
  when 'r' then abbrev = 'rock'
  when 'p' then abbrev = 'paper'
  when 'sc' then abbrev = 'scissors'
  when 'l' then abbrev = 'lizard'
  when 'sp' then abbrev = 'spock'
  end
  abbrev
end

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (WINNING_COMBINATIONS[:"#{first}"][0] == second) || (WINNING_COMBINATIONS[:"#{first}"][1] == second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    update_score_player
  elsif win?(computer, player)
    prompt("Computer won!")
    update_score_computer
  else
    prompt("It's a tie!")
  end
end

def valid_response?(input)
  VALID_YES_NO.include?(input)
end

def display_rules(input)
  inputs = ['y', 'yes']
  if inputs.include?(input)
    prompt(RULES.to_s)
  end
end

def update_score_player
  SCORES[:player_score] += 1
end

def update_score_computer
  SCORES[:computer_score] += 1
end

def display_score
  prompt("You have #{SCORES[:player_score]}. Computer has #{SCORES[:computer_score]}.")
end

def grand_champion?(score)
  score == MAX_WINS
end

def reset_scores
  SCORES[:player_score] *= 0
  SCORES[:computer_score] *= 0
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")

loop do
  prompt("Would you like to read the rules?")
  answer = gets.chomp.downcase
  if valid_response?(answer)
    display_rules(answer)
    break
  else
    prompt("That's not a valid answer. \n Choose yes or no.")
  end
end

prompt("The first to #{MAX_WINS} victories is the champion. Good Luck!")

loop do
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice)
        break
      elsif VALID_ABBREVS.include?(choice)
        choice = abbrev_to_choice(choice)
        break
      elsif choice == 's'
        prompt("Choose sc for scissors or sp for spock.")
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    system "clear"

    prompt("You chose: #{choice} Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    display_score

    if grand_champion?(SCORES[:computer_score])
      prompt("Computer is the Grand Champion.")
      break
    end

    if grand_champion?(SCORES[:player_score])
      prompt("Congratulations! You are the Grand Champion!")
      break
    else
      prompt("#{MAX_WINS - SCORES[:player_score]} more until you are Grand Champion!")
    end
  end

  loop do
    prompt("Would you like to play again?")
    answer = gets.chomp.downcase
    if valid_response?(answer) && answer.start_with?('n')
      prompt("Thank you for playing. Good bye!")
      exit
    elsif valid_response?(answer) && answer.start_with?('y')
      reset_scores
      system "clear"
      break
    else
      prompt("That's not a valid answer. \n Choose yes or no.")
    end
  end
end
