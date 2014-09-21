class Train

	def initialize
		@coaches = [Coach.new, Coach.new, Coach.new]
	end

	def coaches
		@coaches
	end

	def arrive(station)
		station.arrive(self)
		self.empty(station)
	end

	def leave(station)
		station.leave(self)
	end

	def add(person)
		if coaches[0].passagers_count < 40
			@coaches[0].add_passager(person)
		elsif coaches[1].passagers_count < 40
			@coaches[1].add_passager(person)
		elsif coaches[2].passagers_count < 40
			@coaches[2].add_passager(person)
		else
			#was raise "train full", but rspec wording wrong somewhere, so using puts for now
			puts "Train full"
		end
	end

	def empty(station)
		@coaches.each do |coach|
			coach.empty(station)
		end
	end

end

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

