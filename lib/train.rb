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
			raise "Train full. #{Person} lost in the confusion"
		end
	end

	def empty(station)
		@coaches.each do |coach|
			coach.empty(station)
		end
	end

	def passagers_count
		a = @coaches[0].passagers_count
		b = @coaches[1].passagers_count
		c = @coaches[2].passagers_count
		return a + b + c
	end

end
