require './players.rb'
require './equations.rb'
require './game_state.rb'

player_one = Player.new(1)
player_two = Player.new(2)
equation = Equations.new

# puts "player_one has #{player_one.lives} lives"
# puts equation.random_number
# puts equation.calculate_answer(1, 3)