class Coach

	def initialize
		@capacity = 40
		@on_board = []
	end

	def capacity
		@capacity 
	end

	def add_passager(passager)
		@on_board << passager
	end

	def remove_passager(passager)
		@on_board.pop
	end

	def passagers_count
		@on_board.length
	end

	def full?
		passagers_count == @capacity
	end


end