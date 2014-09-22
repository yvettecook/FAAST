require 'station'
require 'train'
require 'person'
require 'coach'

describe Station do

	let (:train) { Train.new }
	let (:coach) { Coach.new }
	let (:station) { Station.new }
	let (:person) { Person.new }

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