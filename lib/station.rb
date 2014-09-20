class Station

	def initialize
		@platform = []
		@trains = []
	end

	def add(person)
		@platform << person
	end

	def remove(person)
		@platform.delete(person)
	end

	def passangers_count
		@platform.length
	end

	def train_count
		@trains.length
	end

	def arrive(train)
		@trains << train
	end

end
