
require './player.rb'
require './question.rb'
require './turn.rb'

def math_game

  players = Player.new("Player 1", "Player 2")


  while (players.player1Life != 0 || players.player2Life != 0)

    players.show_player1

    question = Question.new

    question.ask_question

    print ">"

    answer = $stdin.gets.chomp.to_i

    if (question.validate_answer(answer) == false)
      players.player1_reduce_life
    end

    players.show_life

    puts "------NEW TURN------"

    players.show_player2

    question = Question.new

    question.ask_question

    print ">"

    answer = $stdin.gets.chomp.to_i

    if (question.validate_answer(answer) == false)
      players.player2_reduce_life
    end

    players.show_life

    puts "------NEW TURN------"

  end

end


math_game


