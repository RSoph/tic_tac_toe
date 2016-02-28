require_relative 'game'
require_relative 'board'
require_relative 'player'

puts "Welcome, what's your name?"
name = gets.chomp

puts "What size board would you like to use? Please give a number from 3 to 10."
size = gets.chomp.to_i
while !(size > 2 && size < 11)
    puts "Sorry, I didn't get that. Please type a number from 3 to 10"
    size = gets.chomp.to_i
end

puts "Would you like to play X or O?"
char = gets.chomp.upcase
while !(char == "X" || char == "O")
    puts "Sorry, I didn't get that. Would you like to play X or O?"
    char = gets.chomp.upcase
end

continue = 'y'
    while continue == "y"
        board = Board.new(size)
        player = Player.new(char.upcase, name, board)
        g = Game.new(player, board)
        g.play
        puts "Would you like to play again? Y or N"
        continue = gets.chomp.downcase
    end

puts "Bye, thanks for playing!"