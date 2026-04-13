module Comparison
  
  def compare_choices (player = [], computer = [])

    player.each.with_index do |color, i|
      if computer.any?(color)
        puts "You guessed the color #{color} and its position" if computer.index(color) == i
        puts "You guessed the color #{color} but not its position" if computer.index(color) != i
      else
        puts "#{color.to_s.capitalize} is incorrect"
      end      
    end

  end

  def winner (player = [], computer = [])
    if player == computer
      return true
    else
      return false
    end
  end

  module_function :compare_choices, :winner

end