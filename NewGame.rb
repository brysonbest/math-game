require './Match'

puts "Would you like to play a friendly game of addition? (y/n)"
@answer = $stdin.gets.chomp.to_s
if @answer == 'y'
  match = Match.new
  match.match_start
else
  puts "Okay, Bye!"
  return false
end
