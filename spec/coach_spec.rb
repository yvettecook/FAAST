require 'coach'

describe Coach do

	let (:coach) { Coach.new }
	let (:person) { double person }


	it "should have a capacity of 40" do
		expect(coach.capacity).to eq(40)
	end

	it "should be able to add people" do
		coach.add_passenger(:person)
		expect(coach.passengers_count).to eq(1)
	end

	it "should be able to remove people" do
		coach.add_passenger(:person)
		coach.remove(:person)
		expect(coach.passengers_count).to eq(0)
	end

	it "should be able to report if full" do
		40.times { coach.add_passenger(:person) }
		expect(coach.full?).to eq(true)
	end

end