require 'coach'

class Train

	def initialize
		@coaches = [Coach.new, Coach.new, Coach.new]
	end

	def coaches
		@coaches
	end

end