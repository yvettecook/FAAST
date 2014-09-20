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

	def passagers_count
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

	def passagers_board(train)
		#before adding in the passager_count line, the method was only adding half of the passagers to the train and leaving rest on the platform. No idea why!
		passagers_count.times do 
			@platform.each do |person|
			train.add(remove(person))
			end
		end
	end

	def passangers_alight(train)
	end

end
