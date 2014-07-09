require_relative 'bike_container'

class Garage

	include BikeContainer

	def receives_only_broken_bikes(bike)
		bikes.select { |bike| bike.broken? }
		dock(bike)
	end

	def fixes_broken_bike(bike)
	 	bike.fix!

	end
end
