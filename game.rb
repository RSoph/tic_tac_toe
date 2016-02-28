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
        if @board.size % 2 == 0
            @before = @board.size - 1
            @after = (((@board.size*@board.size)-2*@board.size + 2)/2)
            @additional = 0
        else
            @before = @board.size - 1
            @after = (((@board.size*@board.size)-2*@board.size + 1)/2)
            @additional = 1
        end
    end

    def play
        @board.display
        @before.times do
            @player_x.turn
            @player_o.turn
        end
        @after.times do
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
        @additional.times do
            @player_x.turn
            if @board.win?("X")
                @player_x.win
                return
            end
        end
        puts "This game is a draw."
    end
end