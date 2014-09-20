require 'station'

describe Station do 

	let (:station) { Station.new }
	let (:person) { double :person }

	it "should hold passangers" do
		station.add(:person)
		expect(station.passangers_count).to eq(1)
	end

end