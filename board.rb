class Board

    attr_accessor :size

    def initialize(size)
        @grid = []
        @size = size
        number = 1
        @size.times do
            row = []
            @size.times do
                row << number
                number += 1
            end
        @grid << row
        end
    end

    def record_mark(number, mark)
        x = (number-1) / @size
        y = (number-1) % (@size)
        if @grid[x][y] == number
            @grid[x][y] = mark
        else
            return false
        end
    end

    def check_rows(mark)
        @grid.each do |square|
            return true if square.count(mark) == @size
        end
        false
    end

    def check_columns(mark)
        @grid.transpose.each do |square|
            return true if square.count(mark) == @size
        end
        false
    end

    def check_diagonals(mark)
        ((0...@size).collect { |i| @grid[i][i] }.count(mark) == @size) || ((0...@size).collect { |i| @grid[i][2-i] }.count(mark) == @size)
    end

    def win?(mark)
        (check_rows(mark)) || (check_columns(mark)) || (check_diagonals(mark))
    end

    def display
        dash = "-----"*@size
        display = ""
        @grid.each do |row|
            display_row = ""
            row.each do |square|
                display_row << " #{square} |" if square.to_i > 9
                display_row << "  #{square} |" if square.to_i <= 9
            end
            display << "#{display_row[0..-3]}\n#{dash}\n"
        end
        subtract = -(dash.length + 2)
        puts display[0..subtract]
    end
end