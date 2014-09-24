require 'train'

describe Station do 

	let (:station) { Station.new }
	let (:person) { double :person }
	let (:train) { double :train}

	it "should add passengers" do
		expect{station.add(person)}.to change{station.passengers_count}.by 1
	end

	it "should hold trains" do
		station.arrive(train)
		expect(station.train_count).to eq(1)
	end

	it "should be able to add multiple passengers to coaches" do
		20.times {
			person = double :person
			station.platform << person 
		}
		station.arrive(train)
		allow(train).to receive(:add).with (anything)
		station.passengers_board(train)
		expect(station.passengers_count).to eq(0)
	end
	
	context "train isn't at the station" do 
		before(:each) do 
			20.times {
			person = double :person
			station.platform << person
		}
		@train2 = double :train
		end

	it "should raise an error" do
		expect(lambda {station.passengers_board(@train2)}).to raise_error "Train is not at this station"
	end

	it "shouldn't remove passengers" do 
			expect(station.passengers_count).to eq(20)

	end

end

end