require_relative 'bike_container'

class DockingStation

	#this gives us all the methods that used to be in this class
	include BikeContainer

	#DEFAULT_CAPACITY = 10 (commented out to test docking station)

	def initialize(options = {})
		@bikes ||= []
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	# the below is commented out to test docking_station

	# def bikes
	# 	@bikes
	# end

	# def dock(bike)
	# 	bikes << bike

	# end

	# def empty?
	# 	bikes.empty?
	# end

	# def bike_count
	# 	bikes.count
	# end

	# def release(bike)
	# 	bikes.delete(bike)
	# end

	# def full?
	# 	capacity == bike_count
	# end

	# def capacity
	# 	@capacity
	# end

	# def available_bikes
	# 	bikes.reject { |bike| bike.broken? }
	# end

end
