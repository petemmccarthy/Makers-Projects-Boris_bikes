require 'docking_station'
require 'bike_container'

describe DockingStation do

	let(:old_street)	{ DockingStation.new }

	it 'has no bikes when created' do
		expect(old_street.bikes.count).to eq 0
	end

	it 'should have a default capacity of 10' do
		expect(old_street.capacity).to eq 10
	end

	it 'should be able to create any capacity docking station' do
		shoreditch = DockingStation.new(capacity: 20)
		expect(shoreditch.capacity).to eq 20
	end

end

