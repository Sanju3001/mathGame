
class Player

  attr_accessor :number, :lives

  def initialize(number, lives)
    @number = number
    @lives = lives
  end

  def show_player
    puts "#{number}: "
  end

end