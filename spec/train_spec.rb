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

	it "should be able to leave a station" do
		train.arrive(station)
		train.leave(station)
		expect(station.train_count).to eq(0)
	end 

	# it  "should be able to fill up coaches to capacity, then move to the next" do
	# 	60.times do |person| 
	# 		person = Person.new 
	# 		train.add(person)
	# 	end
	# 	expect(@coaches[0].count_passagers).to eq(20)
	# 	expect(@coaches[1].count_passagers).to eq(20)
	# end

	it "should be able to remove empty passangers from all its coaches" do
		
		
	end

	
end