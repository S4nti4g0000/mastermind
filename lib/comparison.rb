module Comparison
  
  def compare_choices (player = [], computer = [])
    
    if player == computer
      return "same" 
    end   

    player.each.with_index do |color, i|
      if computer.any?(color)
        puts "You guessed the color and the position" if computer.index(color) == i
        puts "You guessed the color but not the position" if computer.index(color) != i
      end      
    end
  
  end

  module_function :compare_choices

end