puts "Welcome! Please enter your name"
name = gets.chomp

puts "Would you like to play X or O?"
player_char = gets.chomp

while (player_char != 'X' && player_char != "O")
	puts "Sorry, I didn't get that, could you tell me again? Would you like to play X or O?"
	player_char = gets.chomp
end

