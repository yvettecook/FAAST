class Coach

	def initialize
		@capacity = 40
		@on_board = []
	end

	def capacity
		@capacity 
	end

	def add_passanger(passanger)
		@on_board << passanger
	end

	def remove_passanger(passanger)
		@on_board.pop
	end

	def passanger_count
		@on_board.length
	end

end