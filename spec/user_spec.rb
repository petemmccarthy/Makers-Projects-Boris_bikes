require 'user'
require 'bike'
require 'docking_station'

describe 'user' do

	let(:user) {User.new}
	let(:bike) {Bike.new}
	let(:bikeman) { User.new(bike) }

	it 'should not have a bike when created' do
		expect(user.has_bike?).to be false 
	end

	it 'can have a bike when created' do
		expect(bikeman).to have_bike
	end

	it 'can break a bike' do
		bikeman.breaks_bike
		expect(bike).to be_broken
	end

	it 'can rent a bike from docking station' do
		old_street = DockingStation.new
		old_street.dock(bike)
		expect(user.has_bike?).to eq false
		user.rent_bike_from(old_street)
		expect(user.has_bike?).to eq true
	end

	# it 'can return a bike to docking station' do
	# end

end
