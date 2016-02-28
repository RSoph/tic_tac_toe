class Game

    def initialize(player, board)
        @board = board
        case player.mark
        when 'X'
            @player_x = player
            @player_o = Player.new('O', "computer", @board)
        when 'O'
            @player_x = Player.new('X', "computer", @board)
            @player_o = player
        end
    end

    def play
        @board.display
        2.times do
            @player_x.turn
            @player_o.turn
        end
        2.times do
            @player_x.turn
            if @board.win?("X")
                @player_x.win
                return
            end
            @player_o.turn
            if @board.win?("O")
                @player_o.win
                return
            end
        end
        @player_x.turn
        if @board.win?("X")
            @player_x.win
            return
        end
        puts "This game is a draw."
    end
end