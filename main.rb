require './players.rb'
require './equations.rb'
require './game_state.rb'
require './game_logic.rb'


# game_state = Game.new

# player_one = Player.new(1)
# player_two = Player.new(2)

# game_logic = Game_Logic.new(player_one, player_two)

# equation = Equations.new

# puts "player_one has #{player_one.lives} lives"
# puts equation.random_number
# puts equation.calculate_answer(1, 3)
# puts game_logic.p1_lives

# game_state.new_game

# game_logic.turn_p1

# if equation.output_equation == true
#   player_one.lives = player_one.lives
# else
#   player_one.lives = player_one.lives - 1
# end

# game_state.lives_left(player_one.lives, player_two.lives)

# game_logic.turn_p2

# if equation.output_equation == true
#   player_two.lives = player_two.lives
# else
#   player_two.lives = player_two.lives - 1
# end

# game_state.lives_left(player_one.lives, player_two.lives)

def start_new_game

  @game_state = Game.new
  
  @player_one = Player.new(1)
  @player_two = Player.new(2)
  
  @game_logic = Game_Logic.new(@player_one, @player_two)
  
  @equation = Equations.new
  
  @game_state.new_game
end


def full_rotation
  
  while @player_one.lives > 0 || @player_two.lives > 0
    
    @game_logic.turn_p1
    
    if @equation.output_equation == true
      @player_one.lives = @player_one.lives
    else
      @player_one.lives = @player_one.lives - 1
    end

    break if @player_one.lives == 0

    @game_state.lives_left(@player_one.lives, @player_two.lives)
    
    @game_state.new_turn

    @game_logic.turn_p2
    
    if @equation.output_equation == true
      @player_two.lives = @player_two.lives
    else
      @player_two.lives = @player_two.lives - 1
    end
    
    break if @player_two.lives == 0

    @game_state.lives_left(@player_one.lives, @player_two.lives)
    
    @game_state.new_turn

  end
  
  if @player_one.lives == 0
    puts "Player 2 wins with a score of #{@player_two.lives}/3"
  else
    puts "Player 1 wins with a score of #{@player_one.lives}/3"
  end

  @game_state.game_over


end

start_new_game()
full_rotation()