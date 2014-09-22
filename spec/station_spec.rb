require 'station'
require 'train'
require 'person'

describe Station do 

	let (:station) { Station.new }
	let (:person) { double :person }
	let (:train) { Train.new }

	it "should hold passengers" do
		station.add(person)
		expect(station.passengers_count).to eq(1)
	end

	it "should hold trains" do
		train.arrive(station)
		expect(station.train_count).to eq(1)
	end

	it "should be able to add passengers to coaches" do
		20.times {
			person = double :person
			station.platform << person 
		}
		expect(station.passengers_count).to eq(20)
		train.arrive(station)
		station.passengers_board(train)
		expect(train.coaches[0].passengers_count).to eq(20)
		expect(station.passengers_count).to eq(0)
	end

	it "should not lose passangers when attempting to overfill a train" do
		140.times{
			person = double :person
			station.platform << person
		}
		train.arrive(station)
		expect(lambda { station.passengers_board(train)}).to raise_error(RuntimeError)
		expect(train.passengers_count).to eq(120)
		expect(station.passengers_count).to eq(20)
	end

	it "should not be able to add passengers to a train that isn't at the station" do
		20.times {
			person = double :person
			station.platform << person
		}
		train2 = Train.new
		expect(lambda {station.passengers_board(train2)}).to raise_error(RuntimeError)
		expect(station.passengers_count).to eq(20)
		expect(train2.passengers_count).to eq(0)
	end

end