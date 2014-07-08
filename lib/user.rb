class User
	attr_reader :bike


	# reader 
	def bike
		puts "im a reader"
		@bike
	end

	# writer
	def bike=(value)
		puts "im a writer"
		@bike = value
	end


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
		cycle = station.release(station.available_bikes.first)
		self.bike=cycle
	end




	# accessor 
	# both


end