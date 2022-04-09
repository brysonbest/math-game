require './Question'
require './Player'
require './Round'

class Match

  def player_selection
    puts "Player1 Name?"
    player1 = $stdin.gets.chomp.to_s
    puts "Player2 Name?"
    player2 = $stdin.gets.chomp.to_s 
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def initialize
    player_selection
    @active_player = @player1
    @living = true
  end

  def match_start
    while @living
      Round.new(@active_player).query
      if @active_player.lives == 0
        swap_player
        puts "Congrats! " + @active_player.name + ", You are the Winner!"
        puts "Game Over!"
        @living = false
      end
      swap_player
    end

  end

  def swap_player
    if @active_player == @player1
      @active_player = @player2
    else 
      @active_player = @player1
    end
  end

end

#testing
# @newMatch = Match.new
# @newMatch.match_start