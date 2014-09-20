require 'train'
require 'coach'

describe Train do 

	let (:train) { Train.new }
	let (:coach) { Coach.new }
	let (:station) { Station.new }

	it "should be created with a default of 3 coaches " do
		expect(train.coaches.length).to eq(3)
	end

	it "should be able to arrive at a station" do
		train.arrive(station)
		expect(station.train_count).to eq(1)
	end
	
end