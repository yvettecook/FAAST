class Station

	attr_reader :trains
	attr_reader :platform

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
		if @trains.include? train
			passengers_count.times do 
				@platform.each do |person|
				train.add(person)
				self.remove(person)
				end
			end
		else
			raise "#{Train} is not at this station"
		end
	end

end

