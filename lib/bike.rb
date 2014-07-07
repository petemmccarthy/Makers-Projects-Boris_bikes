class Bike

		# the initialize method is always called when you create a new
		# class by typing Bike.new

	def initialize
		
		# all instance variables begin with "@"
    	# this must be an instance variable because we'll need it
    	# in other methods
		@broken = false
	end

		# these are instance methods
	def broken?
		# this is an instance var but it's available in all methods
		# and can be updated by them, eg. @broken = true
		@broken
	end

	def break!
		# in ruby, a nil value is treated as false if a boolean value's needed.
		# therefore, an empty method returns, nil/false.
		@broken = true # in ruby, a nil value is treated as false if a boolean value's needed.
		self
	end

	def fix!
		@broken = false
		self # i am the bike. If you want ruby not to return false you need this
		# so you need toset this to self
		# basically, you want the poutput to be the bike itself
		# if you dont do this the next method is called on true/false
		# and fix! or break! (for exanple) cant be called on treu/false
	end	

end