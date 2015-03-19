require 'garage'
require 'bike'

describe Garage do

	let(:garage)			{ Garage.new }
	let(:trek)				{ Bike.new }
	let(:broken_bike)	{ Bike.new.break! }

	it 'has no bikes when created' do
		expect(garage.bike_count).to eq (0)
	end

	it 'can receive bikes' do
		expect(garage.bike_count).to eq (0)
		garage.dock(broken_bike)
		expect(garage.bike_count).to eq (1)
	end

	it 'can receive only broken bikes' do
		expect(garage.bike_count).to eq (0)
		garage.receives_only_broken_bikes(broken_bike)
		expect(garage.bikes).to include(broken_bike)
	end

	it 'can fix a broken bike' do
		garage.dock(broken_bike)
		garage.fix_broken_bike(broken_bike)
		expect(broken_bike.broken?).to be false
	end

end