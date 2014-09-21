class Coach

	attr_reader :capacity

	def initialize
		@capacity = 40
		@on_board = []
	end

	def add_passager(passager)
		@on_board << passager
	end

	def remove(passager)
		@on_board.pop
	end

	def passagers_count
		@on_board.length
	end

	def full?
		passagers_count == @capacity
	end

	def empty(station)
		passagers_count.times do 
			@on_board.each do |person|
				station.add(remove(person))
			end		
		end
	end

end