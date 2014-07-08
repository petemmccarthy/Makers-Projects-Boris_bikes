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

end





























# from enrique

	# def rent_bike_from(docking_station)
	# 	docking_station.release_bike
	
	# end


	


