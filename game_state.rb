class Game

  def new_game
    puts  "---- NEW GAME ----"
  end

  def new_turn
    puts "---- NEW TURN ----"
  end

  def game_over
    puts "---- GAME OVER ----"
  end

  def right_answer
    puts "That's right, you got it!"
  end

  def wrong_answer
    puts "Womp womp, no bueno"
  end

  def lives_left(one, two)
    puts "P1: #{one}/3 vs P2: #{two}/3"
  end

end