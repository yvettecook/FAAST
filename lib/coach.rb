class Coach

	def initialize
		@capacity = 40
		@on_board = []
	end

	def capacity
		@capacity 
	end

	def add_passangers(passangers)
		@on_board << passangers
	end

	def passanger_count
		@on_board.length
	end

end