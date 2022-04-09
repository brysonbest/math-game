class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def reduce_life
    @lives -= 1
  end

end

#testing
# player = "Steven"
# @new_player = Player.new(player)
# puts @new_player.name
# puts @new_player.lives
