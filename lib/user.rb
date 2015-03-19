class User

	attr_accessor :bike

	def initialize(bike = nil)
		@bike = bike
	end

	def has_bike?
		!bike.nil?
	end

	def breaks_bike
		bike.break!
	end

	def rent_bike_from(docking_station)
		self.bike = docking_station.release(docking_station.available_bikes.first)
	end

	def return_bike_to(docking_station)
		docking_station.dock(self.bike)
		self.bike = nil
	end

end