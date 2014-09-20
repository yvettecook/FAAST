class Station

	def initialize
		@platform = []
	end

	def add(person)
		@platform << person
	end

	def passangers_count
		@platform.length
	end

end
