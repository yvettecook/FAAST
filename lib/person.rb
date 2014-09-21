class Person

	attr_accessor :balance

	def initialize
		@balance = 10
	end

	def touch_in(station)
		if @balance > 2
			station.add(self)
			@balance = @balance -2
		else
			raise "Insufficent balance to travel"
		end
	end

	def touch_out(station)
		station.remove(self)
	end

end
