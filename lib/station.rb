class Station

	attr_reader :trains
	attr_reader :platform

	def initialize
		@platform = []
		@trains = []
	end

	def add(person)
		platform << person
	end

	def remove(person)
		platform.delete(person)
	end

	def passengers_count
		@platform.length
	end

	def train_count
		@trains.length
	end

	def arrive(train)
		@trains << train
	end

	def leave(train)
		@trains.pop
	end

	def passengers_board(train)
		raise "Train is not at this station" unless @trains.include? train
		platform.dup.each {|person| transfer person, to: train }
	end

	def transfer person, to: train
			to.add(person) 
			self.remove(person)
	end

end

