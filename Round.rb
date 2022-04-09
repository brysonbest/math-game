require './Question'
require './Player'

class Round 

  attr_accessor :quiz, :player

  def initialize(player)
    @quiz = Question.new
    @player = player
  end

  def query
    puts @player.name + ": " + @quiz.question
    @player_answer = $stdin.gets.chomp.to_i
    if @player_answer == @quiz.answer
      puts "Correct!"
    end
    if @player_answer != @quiz.answer
      puts "Nope, I'm sorry! The correct answer was: " + @quiz.answer.to_s
      @player.reduce_life
    end
    puts @player.lives.to_s + " lives remaining."
  end
end

#testing
# new_player = Player.new("Steven")
# @new_round = Round.new(new_player)
# @new_round.query()
# puts @new_round.quiz

# puts @new_round.player.name
# puts @new_round.player.lives