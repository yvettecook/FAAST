class Person

	def touch_in(station)
		station.add(self)
	end

	def touch_out(station)
		station.remove(self)
	end

end