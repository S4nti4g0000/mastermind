require_relative 'lib/codemaker'
require_relative 'lib/player'
require_relative 'lib/comparison'

codemaker = CodeMaker.new
player = Player.new

codemaker.create_code

round_count = 0

while round_count < 5
  player.choice.clear if !player.choice.empty?

  puts "\n -- Round ##{round_count+1} -- \n"

  player.player_choice
  player.choice

  Comparison.compare_choices(player.choice, codemaker.code)

  round_count += 1

end