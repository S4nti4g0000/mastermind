
class Player 
  
  attr_reader :choice

  def initialize
    @choice = []    
  end

  def player_choice
    
    4.times do 
      print "Enter a color: "
      @choice << gets.chomp
    end

    @choice

  end

end