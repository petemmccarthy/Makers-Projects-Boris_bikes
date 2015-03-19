require 'docking_station'
require 'bike'

describe BikeContainer do

	let(:trek)				{ Bike.new }
	let(:old_street)	{ DockingStation.new }

	it 'has no bikes when created' do
		expect(old_street.bikes.count).to eq 0
	end

	it 'can dock a bike' do
		old_street.dock(trek)
		expect(old_street.bikes).to eq [trek]
	end

	it 'knows when there is a bike docked' do
		old_street.dock(trek)
		expect(old_street.empty?).to be false
	end

	it 'knows when its empty' do
		expect(old_street).to be_empty
	end

	it 'knows how many bikes it has' do
		expect(old_street.bike_count).to eq (0)
		old_street.dock(trek)
		expect(old_street.bike_count).to eq (1)
	end

	it 'can release a bike' do
		old_street.dock(trek)
		expect(old_street.bike_count).to eq 1
		old_street.release(trek)
		expect(old_street.bike_count).to eq 0
	end

	it 'knows when it is full' do
		10.times { old_street.dock(Bike.new) }
		expect(old_street).to be_full
	end

	it 'knows when it is not full' do
		9.times { old_street.dock(Bike.new) }
		expect(old_street).not_to be_full
	end

	it 'should be able to create any capacity docking station' do
		shoreditch = DockingStation.new(capacity: 20)
		expect(shoreditch.capacity).to eq 20
	end

	it 'should have a default capacity of 10' do
		shoreditch = DockingStation.new
		expect(shoreditch.capacity).to eq 10
	end

	it 'knows if there are available bikes' do
		fuji = Bike.new
		fuji.break!
		old_street.dock(trek)
		old_street.dock(fuji)
		expect(old_street.available_bikes).to eq [trek]
	end

end



