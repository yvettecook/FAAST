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

	# it "should be able to remove passangers from train" do
	# 	20.times {
	# 		person = Person.new
	# 		person.touch_in(station)
	# 	}
	# 	train.arrive(station)
	# 	station.passagers_board(train)
	# 	expect(train.coaches[0].passagers_count).to eq(20)
	# 	station.passangers_alight(train)
	# 	expect(train.coaches[0].passagers_count).to eq(0)
	# 	expect(station.passagers_count).to eq(20)
	# end



end