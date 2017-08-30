
require './player.rb'
require './question.rb'
require './turn.rb'

def math_game

  player1 = Player.new("Player 1", 3)
  player2 = Player.new("Player 2", 3)

  # puts "Player 1 is #{player1.number}"


  while (player1.lives != 0 || player2.lives != 0)

    player1.show_player

    question = Question.new

    question.ask_question

    answer = $stdin.gets.chomp.to_i

    question.validate_answer(answer)

    player2.show_player

    question = Question.new

    question.ask_question

    answer = $stdin.gets.chomp.to_i

    question.validate_answer(answer)

  end

end


math_game


