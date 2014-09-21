require 'person'
require 'coach'

describe Person do

let (:person) { Person.new }
let (:coach) { Coach.new }
let (:station) { Station.new }


	it "should be able to touch in at a station" do
		person.touch_in(station)
		expect(station.passagers_count).to eq(1) 
	end

	it "should be able to touch out of a station" do
		person.touch_in(station)
		person.touch_out(station)
		expect(station.passagers_count).to eq(0)
	end

	it "should hold a random amount of money on initialize" do
		expect(person.balance.is_a? Integer).to be(true)
	end

	it "should be unable to enter station with less than 2GBP balance" do
		person.balance=(1)
		expect(lambda {person.touch_in(station)}).to raise_error(RuntimeError)
	end

	
end

