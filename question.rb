
class Question

  attr_accessor :random1, :random2

  def initialize

    @random1 = rand(1..20)
    @random2 = rand(1..20)

  end

  def ask_question

    puts "What does #{random1} plus #{random2} equal?"

  end

  def validate_answer(answer)

    if (answer) == (random1 + random2)
      puts "YES! You are correct."
      return true
    else
      puts "Seriously? No!"
      return false
    end

  end

end