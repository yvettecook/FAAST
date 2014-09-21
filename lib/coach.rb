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

	def empty_passengers(station)
		passengers_count.times do 
			@on_board.each do |person|
				station.add(remove(person))
			end		
		end
	end

end