require 'Coach'

describe Coach do

	let (:coach) { Coach.new }
	let (:person) { double person }

	it "should have a capacity of 40" do
		expect(coach.capacity).to eq(40)
	end

	it "should be able to add people" do
		coach.add_passanger(:person)
		expect(coach.passanger_count).to eq(1)
	end

	it "should be able to remove people" do
		coach.add_passanger(:person)
		coach.remove_passanger(:person)
		expect(coach.passanger_count).to eq(0)
	end

end