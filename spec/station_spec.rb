require 'station'
require 'train'
require 'person'

describe Station do 

	let (:station) { Station.new }
	let (:person) { Person.new }
	let (:train) { Train.new }

	it "should hold passangers" do
		station.add(person)
		expect(station.passangers_count).to eq(1)
	end

	it "should hold trains" do
		train.arrive(station)
		expect(station.train_count).to eq(1)
	end


end