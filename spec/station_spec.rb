require 'station'
require 'train'
require 'person'

describe Station do 

	let (:station) { Station.new }
	let (:person) { double :person }
	let (:train) { double :train}

	it "should hold passengers" do
		station.add(person)
		expect(station.passengers_count).to eq(1)
	end

	it "should hold trains" do
		station.arrive(train)
		expect(station.train_count).to eq(1)
	end

	it "should be able to add passengers to coaches" do
		20.times {
			person = double :person
			station.platform << person 
		}
		expect(station.passengers_count).to eq(20)
		station.arrive(train)
		allow(train).to receive(:add).with (anything)
		station.passengers_board(train)
		expect(station.passengers_count).to eq(0)
	end

	it "should not be able to add passengers to a train that isn't at the station" do
		20.times {
			person = double :person
			station.platform << person
		}
		train2 = double train
		expect(lambda {station.passengers_board(train2)}).to raise_error(RuntimeError)
		expect(station.passengers_count).to eq(20)
	end

end