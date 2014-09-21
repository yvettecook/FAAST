require 'coach'

class Train

	attr_reader :coaches

	def initialize
		@coaches = [Coach.new, Coach.new, Coach.new]
	end

	def arrive(station)
		station.arrive(self)
		self.empty_passengers(station)
	end

	def leave(station)
		station.leave(self)
	end

	def add(person)
		if coaches[0].passengers_count < 40
			@coaches[0].add_passenger(person)
		elsif coaches[1].passengers_count < 40
			@coaches[1].add_passenger(person)
		elsif coaches[2].passengers_count < 40
			@coaches[2].add_passenger(person)
		else
			raise "Train full. #{Person} lost in the confusion"
		end
	end

	def empty_passengers(station)
		@coaches.each do |coach|
			coach.empty_passengers(station)
		end
	end

	def passengers_count
		a = @coaches[0].passengers_count
		b = @coaches[1].passengers_count
		c = @coaches[2].passengers_count
		return a + b + c
	end

end
