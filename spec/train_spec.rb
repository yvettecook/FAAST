require 'train'
require 'coach'

describe Train do 

	let (:train) { Train.new }
	let (:coach) { Coach.new }

	it "should be created with a default of 3 coaches " do
		expect(train.coaches.length).to eq(3)
	end
	
end