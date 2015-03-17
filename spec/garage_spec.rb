require 'garage'
require 'bike'

describe Garage do

	let(:depot) {Garage.new}
	let(:trek) {Bike.new}
	let(:broken_bike) {Bike.new.break!}

	it 'has no bikes when created' do
		expect(depot.bike_count).to eq (0)
	end

	it 'can receive bikes' do
		expect(depot.bike_count).to eq (0)
		depot.dock(broken_bike)
		expect(depot.bike_count).to eq (1)
	end

	it 'can receive only broken bikes' do
		expect(depot.bike_count).to eq (0)
		depot.receives_only_broken_bikes(broken_bike)
		expect(depot.bikes).to include(broken_bike)
	end

	it 'can fix a broken bike' do
		depot.fixes_broken_bike(broken_bike)
		expect(broken_bike.broken?).to be false
	end

	it 'releases only fixed bikes' do
	 	expect(depot.bike_count).to eq (1)
	 	depot.release
	 	expect(depot.bike_count).to eq (0)
	end
end