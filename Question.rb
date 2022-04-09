class Question
  attr_accessor :number1, :number2, :question, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @question = "What does " + @number1.to_s + " plus " + @number2.to_s + " equal?"
    @answer = @number1 + @number2
  end
end

#testing
# @newQuestion = Question.new()
# puts @newQuestion.number1
# puts @newQuestion.number2
# puts @newQuestion.question
# puts @newQuestion.answer