require 'garage'
require 'bike'

describe Garage do

it 'has no bikes when created' do
	depot = Garage.new
	expect(depot.bike_count).to eq (0)
end

# it 'can fix a broken bike' do
# 	depot = Garage.new
# 	broken_bike = Bike.new.break!
# 	# expect(depo.bikes).to eq [broken_bike]
# 	# # broken_bike.fix
# 	# # expect(garage.bikes)

# end

it 'knows if the bike is broken or not' do 
	depot = Garage.new
	expect(Bike.new.broken?).to eq (broken)
end


end