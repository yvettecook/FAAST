class Person

	def initialize
		@balance = rand(20)
	end

	def balance
		@balance
	end

	def touch_in(station)
		station.add(self)
	end

	def touch_out(station)
		station.remove(self)
	end

end
