require 'Coach'

describe Coach do

	let (:coach) { Coach.new }
	let (:person) { double person }

	it "should have a capacity of 40" do
		expect(coach.capacity).to eq(40)
	end

end