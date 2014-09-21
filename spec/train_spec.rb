require 'train'
require 'coach'

describe Train do 

	let (:train) { Train.new }
	let (:coach) { Coach.new }
	let (:station) { Station.new }
	let (:person) { Person.new }

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

	it "should be able to fill up coaches to capacity, then move to the next" do
		120.times do |person| 
			person = Person.new 
			train.add(person)
		end
		expect(train.coaches[0].passagers_count).to eq(40)
		expect(train.coaches[1].passagers_count).to eq(40)
		expect(train.coaches[2].passagers_count).to eq(40)
	end

	it "should raise error before more passangers than capacity are added" do
		
		120.times do |person| 
			person = Person.new 
			train.add(person)
		end
		expect(lambda {train.add(person) }).to raise_error(RuntimeError)
		expect(train.coaches[0].passagers_count).to eq(40)
		expect(train.coaches[1].passagers_count).to eq(40)
		expect(train.coaches[2].passagers_count).to eq(40)

	end


	it "should be able to remove passangers from all its coaches" do
		120.times do |person| 
			person = Person.new 
			train.add(person)
		end
		train.empty(station)
		expect(train.coaches[0].passagers_count).to eq(0)
		expect(train.coaches[1].passagers_count).to eq(0)
		expect(train.coaches[2].passagers_count).to eq(0)
		expect(station.passagers_count).to eq(120)
	end

	it "should automatically empty coaches when it arrives at a station" do
		90.times do |person| 
			person = Person.new 
			train.add(person)
		end
		train.arrive(station)
		expect(train.coaches[0].passagers_count).to eq(0)
		expect(train.coaches[1].passagers_count).to eq(0)
		expect(train.coaches[2].passagers_count).to eq(0)
		expect(station.passagers_count).to eq(90)
	end

	it "should be able to report how many passagers it's holding" do
		90.times do |person| 
			person = Person.new 
			train.add(person)
		end
		expect(train.passagers_count).to eq(90)
	end
	
end