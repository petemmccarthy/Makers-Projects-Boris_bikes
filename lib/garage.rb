require_relative 'bike_container'
require 'bike'

class Garage

	include BikeContainer

	def receives_only_broken_bikes(bike)
		bikes.select { |bike| bike.broken? }
		dock(bike)
	end
end
