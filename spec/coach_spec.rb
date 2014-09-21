require 'coach'

describe Coach do

	let (:coach) { Coach.new }
	let (:person) { Person.new }
	let (:station) { Station.new }

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
		40.times { |person|
			person = Person.new
			coach.add_passenger(person) 
		}
		expect(coach.full?).to eq(true)
	end

	it "should be able to empty itself onto a station" do
		40.times { |person|
			person = Person.new
			coach.add_passenger(person) 
		}
		coach.empty(station)
		expect(coach.passengers_count).to eq(0)
		expect(station.passengers_count).to eq(40)
	end

end