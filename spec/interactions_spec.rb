require 'station'
require 'train'
require 'person'
require 'coach'

describe Train do

	let (:train) { Train.new(Coach) }
	let (:coach) { Coach.new }
	let (:station) { Station.new }
	let (:person) { Person.new }

	context 'when interacting with station' do

	it "should not lose passangers when attempting to overfill a train" do
		140.times{
			person = Person.new
			station.platform << person
		}
		train.arrive(station)
		expect(lambda { station.passengers_board(train)}).to raise_error(RuntimeError)
		expect(train.passengers_count).to eq(120)
		expect(station.passengers_count).to eq(20)
	end
end

end

describe Coach do

	let (:train) { Train.new }
	let (:coach) { Coach.new }
	let (:station) { Station.new }
	let (:person) { Person.new }

	context 'when interacting with station' do

	it "should be able to empty itself onto a station" do
		40.times { |person|
			person = Person.new
			coach.add_passenger(person) 
		}
		coach.empty_passengers(station)
		expect(coach.passengers_count).to eq(0)
		expect(station.passengers_count).to eq(40)
	end
end

end