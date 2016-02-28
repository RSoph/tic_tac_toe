class Board

    def initialize
        @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    end

    def location_available?(number)
        x = (number-1)/3
        y = (number-1)%3
        @board[x][y] == number
    end

    def record_mark(number, mark)
        x = (number-1)/3
        y = (number-1)%3
        @board[x][y] = mark
    end

    def check_rows(mark)
        @board.each do |square|
            return true if square.count(mark) == 3
        end
        false
    end

    def check_columns(mark)
        @board.transpose do |square|
            return true if square.count(mark) == 3
        end
        false
    end

    def check_diagonals(mark)
        ((0...3).collect { |i| @board[i][i] }.count(mark) == 3) || ((0...3).collect { |i| @board[i][2-i] }.count(mark) == 3)
    end

    def win?(mark)
        (check_rows(mark)) || (check_columns(mark)) || (check_diagonals(mark))
    end

    def display
        puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
        puts "-----------"
        puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
        puts "-----------"
        puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
    end
end