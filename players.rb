class Player
  attr_accessor :lives
  attr_reader :player_number
  
  def initialize(number)
    @player_number = number
    @lives = 3
  end
end