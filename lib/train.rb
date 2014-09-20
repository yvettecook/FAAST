# srequire 'coach.rb'

class Train

	def initialize
		@coaches = [Coach.new, Coach.new, Coach.new]
	end

	def coaches
		@coaches
	end

	def arrive(station)
		station.arrive(self)
	end

	def leave(station)
		station.leave(self)
	end

	def add(person)
		@coaches[0].add_passager(person)
	end

	def count_passagers
	end

end

