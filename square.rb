class Square

	attr_accessor :x, :y, :char

	def initialize(x, y, char)
		@x = x
		@y = y
		@char = char
	end

	def move(char)
		@char = char

end