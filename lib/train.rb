class Train

	attr_reader :coaches

	def initialize(coach)
		@coaches = [coach.new, coach.new, coach.new]
	end

	def arrive(station)
		station.arrive(self)
		self.empty_passengers(station)
	end

	def leave(station)
		station.leave(self)
	end

	def add(person)
		raise "Train full." if all_coaches_full?
		place_person_in_available_coach(person)
	end

	def place_person_in_available_coach(person)
		return coaches.first.add_passenger(person) unless coaches.first.full?
		return coaches[1].add_passenger(person) unless coaches[1].full?
		return coaches.last.add_passenger(person) unless coaches.last.full?
	end

	def all_coaches_full?
		passengers_count == overall_capacity
	end

	def overall_capacity
		coaches.inject(0) {|memo, coach| memo + coach.capacity}
	end

	def empty_passengers(station)
		@coaches.each {|coach|coach.empty_passengers(station)}
	end

	def passengers_count
		@coaches.inject(0) {|memo, coach| memo  + coach.passengers_count}
	end

end