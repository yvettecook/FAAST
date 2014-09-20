require 'station'
require 'train'

describe Station do 

	let (:station) { Station.new }
	let (:person) { double :person }
	let (:train) { Train.new }

	it "should hold passangers" do
		station.add(:person)
		expect(station.passangers_count).to eq(1)
	end

	it "should hold trains" do
		train.arrive(station)
		expect(station.train_count).to eq(1)
	end


end