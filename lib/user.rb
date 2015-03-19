class User

	attr_accessor :bike

	def initialize(bok = nil)
		@bike = bok if bok
	end

	def has_bike?
		!bike.nil?
	end

	def breaks_bike
		bike.break!
	end

	def rent_bike_from(station)
		self.bike = station.release(station.available_bikes.first)
	end

	def return_bike_to(old_street)
		old_street.dock(self.bike)
		self.bike = nil
	end

end