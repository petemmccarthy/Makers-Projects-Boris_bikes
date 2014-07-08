class DockingStation
	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@bikes = []
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def bikes
		@bikes
	end

	def dock(bike)
		bikes << bike

	end

	def empty?
		bikes.empty?
	end

	def bike_count
		bikes.count
	end

	def release(bike)
		bikes.delete(bike)
	end

	def full?
		capacity == bike_count
	end

	def capacity
		@capacity
	end

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end

end
