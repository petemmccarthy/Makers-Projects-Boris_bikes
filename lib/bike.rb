class Bike

	def initialize
		@broken = false
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
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