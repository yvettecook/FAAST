class Coach

	attr_reader :capacity

	def initialize
		@capacity = 40
		@on_board = []
	end

	def add_passenger(passenger)
		@on_board << passenger
	end

	def remove(passenger)
		@on_board.pop
	end

	def passengers_count
		@on_board.length
	end

	def full?
		passengers_count == @capacity
	end

	def empty_passengers station
		@on_board.dup.each {|person| transfer(person, to: station)}
	end

	def transfer person, to: station
		to.add(self.remove(person))		
	end

end