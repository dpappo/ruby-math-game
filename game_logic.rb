class Game_Logic
  
  attr_accessor :p1_lives, :p2_lives

  def initialize(player_one, player_two)
    @p1_lives = player_one.lives
    @p2_lives = player_two.lives
  end

  def turn_p1
    puts "Player 1: "
  end
  def turn_p2
    puts "Player 2: "
  end



end