require 'person'
require 'coach'

describe Person do

let (:person) { Person.new }
let (:station) { double :station }


	it "should be able to touch in at a station" do
		expect(station).to receive(:add).with person
		person.touch_in(station)
	end

	it "should be able to touch out of a station" do
		expect(station).to receive(:remove).with person
		person.touch_out(station)
	end

	it "should hold a random amount of money on initialize" do
		expect(person.balance.is_a? Integer).to be(true)
	end

	it "should be unable to enter station with less than 2GBP balance" do
		person.balance=(1)
		expect(lambda {person.touch_in(station)}).to raise_error(RuntimeError)
	end

	
end

