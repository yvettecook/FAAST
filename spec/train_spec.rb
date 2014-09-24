require 'train'
require 'coach'

describe Train do 

	let (:train) { Train.new(Coach) }
	let (:station) { double :station }

	it "should be created with a default of 3 coaches " do
		expect(train.coaches.length).to eq(3)
	end

	it "should be able to arrive at a station" do
		expect(station).to receive(:arrive).with train
		train.arrive(station)
	end

	it "should be able to leave a station" do
		expect(station).to receive(:arrive).with train
		train.arrive(station)
		expect(station).to receive(:leave).with train
		train.leave(station)
	end 

	it "should be able to fill up coaches to capacity, then move to the next" do
		120.times { train.add(:person) }
		expect(train.coaches[0].passengers_count).to eq(40)
		expect(train.coaches[1].passengers_count).to eq(40)
		expect(train.coaches[2].passengers_count).to eq(40)
	end

	it "should raise error before more passengers than capacity are added" do
		
		120.times { train.add(:person) }
		expect(lambda {train.add(:person) }).to raise_error(RuntimeError)
		expect(train.coaches[0].passengers_count).to eq(40)
		expect(train.coaches[1].passengers_count).to eq(40)
		expect(train.coaches[2].passengers_count).to eq(40)

	end

	it "should be able to remove passangers from all its coaches" do
		120.times { train.add(:person) }
		allow(station).to receive(:add).with (anything)		
		train.empty_passengers(station)
		expect(train.coaches[0].passengers_count).to eq(0)
		expect(train.coaches[1].passengers_count).to eq(0)
		expect(train.coaches[2].passengers_count).to eq(0)
	end

	it "should automatically empty coaches when it arrives at a station" do
		90.times { train.add(:person) }
		allow(station).to receive(:arrive).with (anything)
		allow(station).to receive(:add).with (anything)	
		train.arrive(station)
		expect(train.coaches[0].passengers_count).to eq(0)
		expect(train.coaches[1].passengers_count).to eq(0)
		expect(train.coaches[2].passengers_count).to eq(0)
	end

	it "should be able to report how many passengers it's holding" do
		90.times { train.add(:person) }
		expect(train.passengers_count).to eq(90)
	end
	
end