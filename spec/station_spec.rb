require 'station'
require 'train'
require 'person'

describe Station do 

	let (:station) { Station.new }
	let (:person) { Person.new }
	let (:train) { Train.new }

	it "should hold passagers" do
		station.add(person)
		expect(station.passagers_count).to eq(1)
	end

	it "should hold trains" do
		train.arrive(station)
		expect(station.train_count).to eq(1)
	end

	it "should be able to add passagers to coaches" do
		20.times {
			person = Person.new
			person.touch_in(station)
		}
		expect(station.passagers_count).to eq(20)
		train.arrive(station)
		station.passagers_board(train)
		expect(train.coaches[0].passagers_count).to eq(20)
		expect(station.passagers_count).to eq(0)
	end

	it "should not lose passangers when attempting to overfill a train" do
		140.times{
			person = Person.new
			person.touch_in(station)
		}
		train.arrive(station)
		expect(lambda { station.passagers_board(train)}).to raise_error(RuntimeError)
		expect(train.passagers_count).to eq(120)
		expect(station.passagers_count).to eq(20)
	end

	it "should not be able to add passagers to a train that isn't at the station" do
		20.times {
			person = Person.new
			person.touch_in(station)
		}
		train2 = Train.new
		expect(lambda {station.passagers_board(train2)}).to raise_error(RuntimeError)
		expect(station.passagers_count).to eq(20)
		expect(train2.passagers_count).to eq(0)
	end




end