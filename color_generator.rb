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


  def generate_colors(difficulty_level, number_of_colors)
    shuffled_colors = number_of_colors.shuffle
    color_guess = ''
    difficulty_level.times do |i|
      color_guess << shuffled_colors[i]
    end
    start_game(color_guess)
  end
