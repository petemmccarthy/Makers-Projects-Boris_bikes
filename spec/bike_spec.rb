require 'bike'

describe Bike do

	let(:fuji)		{ Bike.new }
	let(:broken_bike)	{ Bike.new.break! }

	it 'should not be broken when created' do
		expect(fuji.broken?).to be false
	end

	it 'can be broken' do
		fuji.break!
		expect(fuji.broken?).to be true
	end

	it 'can be fixed' do
		broken_bike.fix!
		expect(broken_bike.broken?).to be false
	end

end