require './players.rb'
require './equations.rb'
require './game_state.rb'
require './game_logic.rb'

game_state = Game.new

player_one = Player.new(1)
player_two = Player.new(2)

game_logic = Game_Logic.new(player_one, player_two)

equation = Equations.new

# puts "player_one has #{player_one.lives} lives"
# puts equation.random_number
# puts equation.calculate_answer(1, 3)
# puts game_logic.p1_lives

game_state.new_game

game_logic.turn
equation.output_equation