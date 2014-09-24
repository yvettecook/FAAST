class Person

	attr_accessor :balance

	def initialize
		@balance = 10
	end

	def touch_in(station)
		raise "Insufficent balance to travel" if balance < 2
		station.add(self) 
		self.balance -= 2
	end

	def touch_out(station)
		station.remove(self)
	end

end
