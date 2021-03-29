class Equations

  attr_reader :was_correct

  def random_number
    rand(1..20)
  end

  def calculate_answer(var1, var2)
    var1 + var2
  end

  def output_equation
    var1 = random_number
    var2 = random_number
    answer = calculate_answer(var1, var2)

    puts "What does #{var1} plus #{var2} equal?"
    input = gets.chomp.to_i
    
    if input == answer
      puts "That's right, you got it!"
      true
    else
      puts "Womp womp, no bueno"
      false
    end

  end

end