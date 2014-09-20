require 'coach'

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

end