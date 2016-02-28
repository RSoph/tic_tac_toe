class Game

    def initialize(player, board)
        @player = player
        @board = board
        case @player.mark
        when 'X'
            @comp = Player.new('O', "computer", @board)
        when 'O'
            @comp = Player.new('X', "computer", @board)
        end
    end

    def play
        @board.display
        if @player.mark == "X"
            player_x = @player
            player_o = @comp
        else
            player_x = @comp
            player_o = @player
        end
        2.times do
            player_x.turn
            player_o.turn
        end
        player_x.turn
        if @board.win?("X")
            player_x.win
            return
        end
        2.times do
            player_o.turn
            if @board.win?("O")
                player_o.win
                return
            end
            player_x.turn
            if @board.win?("X")
                player_x.win
                return
            end
        end
        puts "This game is a draw."
    end
end