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
		# depot.receives_only_broken_bikes(trek) 
		expect(depot).to include(broken_bike)
	end



	# it 'can release bikes' do
	# 	expect(depot.bike_count).to eq (0)
	# 	depot.dock(broken_bike)
	# 	expect(depot.bike_count).to eq (1)
	# end

# it 'can fix a broken bike' do
# 	trek = Bike.new
# 	expect(depot.bikes).to eq [broken_bike]
# end


# it 'knows if the bike is broken or not' do 
# 	depot = Garage.new
# 	expect(Bike.new.broken?).to eq (broken)
# end

end