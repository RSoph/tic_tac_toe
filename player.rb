class Player
    attr_accessor :name, :mark

    def initialize(mark, name, board)
        @mark = mark
        @name = name
        @board = board
    end

    def turn
        if @name == "computer"
            square = rand(9) + 1
            while !@board.record_mark(square, @mark)
                square = rand(9) + 1
            end
            puts "Ok, I'm going to put an #{@mark} at space #{square}."
        else
            puts "Where would you like to place an #{@mark}?"
            square = gets.chomp.to_i
            while !(square >= 1 && square <= 9)
                puts "That's not a valid move, please pick a number from 1 to 9."
                square = gets.chomp.to_i
            end
            while !@board.record_mark(square, @mark)
                puts "That space isn't available, please pick again."
                square = gets.chomp.to_i
            end
        end
        @board.display
    end

    def win
        if @name == "computer"
            puts "Sorry, you lost this game!"
        else
            puts "Congrats #{@name}, you won!"
        end
    end

end