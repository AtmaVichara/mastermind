require 'pry'

def easy
  colors = ['r', 'r', 'b', 'b', 'g', 'g', 'y','y']
  color_generator(4, colors)
end

def medium
  colors = ['r', 'r', 'c', 'c', 'b', 'b', 'g', 'g', 'y','y']
  color_generator(6, colors)
end

def hard
  colors = ['r', 'r', 'c', 'c', 'b', 'b', 'm', 'm', 'g', 'g', 'y','y']
  color_generator(8, colors)
end

def color_generator(difficulty_level, number_of_colors)
  shuffled_colors = number_of_colors.shuffle
  color_guess = ''
  difficulty_level.times do |i|
    color_guess << shuffled_colors[i]
  end
  start_game(color_guess)
end


def start_game(color_guess)

  puts "I have generated a beginner sequence made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at anytime to quit the game.
  What's your guess?"
  print "> "
  user_guess = gets.chomp


  if user_guess.downcase == color_guess
    puts "Congratulations! You guessed the sequence '#{color_guess}' in "
  elsif user_guess.downcase == "c" || "cheat"
    puts color_guess
  else
    puts "Oh dang let's try again another time."
  end
end


def welcome_screen
  puts "Welcome to MASTERMIND"
  puts "\n"

  print "Would you like you (p)lay, read the (i)nstructions, or (q)uit?
  > "
  user_input = gets.chomp
  binding.pry
  if user_input == "p" || "play"
    puts "What difficulty would you like? (e)asy?, (m)edium, or (h)ard?"
    print "> "
    difficulty = gets.chomp

    if difficulty.downcase == "e" || "easy"
      easy
    elsif difficulty.downcase == "m" || "medium"
      medium
    elsif difficulty.downcase == "h" || "hard"
      hard
    else
      "sorry I did not understand the input, please put type in (e)asy, (m)edium, or (h)ard."
    end


  elsif user_input.downcase == ("i" || "instructions" || "instruction")
    puts "The game is a guessing game. When you start we will create a randomly
    generated order of (r)ed, (g)reen, (b)lue, and (y)ellow colors. Your job
    is to guess what order they are in. An example of the your guess should
    be in the form of 'rgby'."
    puts "Would you like to begin? Yes or No"
    print "> "
    user_answer = gets.chomp.downcase
    if user_answer == "yes"
      start_game
    elsif user_answer == "no"
      puts "Alright... well maybe another time"
    else
      puts "I gave you two ways to answer and you messed that up... I'm dissapointed.
      Let's try again some other time."
    end


  elsif user_input.downcase == "q" || "quit"
    puts "Are you sure you want to quit? Yes or No"
    wanna_quit = gets.chomp
    if wanna_quit.downcase == "yes"
      print "Alright then... I get it... No need to explain... If you're too afraid
I get it. Maybe another time."
elsif wanna_quit.downcase == "no"
      puts "There you go!! Let's get started."
      start_game
    else
      puts "Well considering you answered with neither a yes or no, I assume you
weren't listening... That's fine. Maybe you have better things to do."
    end


  else
    puts "I am not sure you understood the question. Try rebooting."
  end
end


welcome_screen
