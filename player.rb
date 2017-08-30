
class Player

  attr_accessor :player1, :player2, :player1Life, :player2Life

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1Life = 3
    @player2Life = 3
  end

  def show_player1
    print "#{player1}: "
  end

  def show_player2
    print "#{player2}: "
  end

  def show_life
    puts "P1: #{player1Life}/3 vs P2: #{player2Life}/3"
  end

  def player1_reduce_life
    self.player1Life -= 1
  end

  def player2_reduce_life
    self.player2Life -= 1
  end

end