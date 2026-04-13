require_relative 'lib/codemaker'
require_relative 'lib/player'
require_relative 'lib/comparison'

codemaker = CodeMaker.new
player = Player.new

codemaker.create_code

round_count = 0
game_on = true
choice = ""

codemaker.code

while round_count <= 5 && game_on

  
  player.choice.clear if !player.choice.empty?

  puts "\n -- Round ##{round_count+1} -- \n"

  player.player_choice
  player.choice

  Comparison.compare_choices(player.choice, codemaker.code)

  if Comparison.winner(player.choice, codemaker.code)
    puts "You win!!!"
    game_on = false
  end
  
  round_count += 1

  if round_count > 5
    puts "\nDo you want to try again Y/N"
    choice = gets.chomp
    if choice == "Y" || choice == "y"
      puts "\n-- A new code was generated --
            \n          -------              "
      codemaker.create_code
      game_on = true
      round_count = 0
      choice = ""
    else
      game_on = false
      choice = ""
    end
  end

end