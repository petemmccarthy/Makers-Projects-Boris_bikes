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

	it 'can return the bike' do
		old_street = DockingStation.new
		bikeman.return_bike_to(old_street)
		expect(bikeman).not_to have_bike
	end

end


































# from enrique



# it 'can rent a bike from docking station' do
# 	station = double :docking_station
# 	person = Person.new
# 	expect(station).to receive(:release_bike)
# 	person.rent_bike_from(station)
# 	end

# it 'has a bike once it rents one from station' do
# 	station = double :docking_station, release_bike: :bike
# 	# this is a hash and return value from hash

# 	#allow(station).to receive release_bike.....is the same

# 	person = Person

# 	person.rent_bike_from
# 	expect(person).to have_bike

# end




