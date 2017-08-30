
require './player.rb'
require './question.rb'

def math_game

  players = Player.new("Player 1", "Player 2")



  while (players.player1Life > 0 || players.player2Life > 0)

    players.show_player1

    question = Question.new

    question.ask_question

    print ">"

    answer = $stdin.gets.chomp.to_i

    if (question.validate_answer(answer) == false)
      players.player1_reduce_life
    end

    players.show_life

    if (players.player1Life == 0)
      puts "player 2 wins with a score of #{players.player2Life}/3"
      puts "------- GAME OVER --------"
      puts "Good bye!"
      exit(0)
    else
      puts "------NEW TURN------"
    end

    players.show_player2

    question = Question.new

    question.ask_question

    print ">"

    answer = $stdin.gets.chomp.to_i

    if (question.validate_answer(answer) == false)
      players.player2_reduce_life
    end

    players.show_life

    if (players.player2Life == 0)
      puts "player 1 wins with a score of #{players.player1Life}/3"
      puts "------- GAME OVER --------"
      puts "Good bye!"
      exit(0)
    else
      puts "------NEW TURN------"
    end

  end


end


math_game


