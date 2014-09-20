require 'Coach'

describe Coach do

	let (:coach) { Coach.new }
	let (:person) { double person }

	it "should have a capacity of 40" do
		expect(coach.capacity).to eq(40)
	end

	it "should be able to hold people" do
		coach.add_passangers(:person)
		expect(coach.passanger_count).to eq(1)
	end


end