# TODO
class Cell
	attr_accessor :alive, :neighbors
	def initialize
		@alive = true
		@neighbors = []
	end
	def alive?
		alive
	end

	def kill
		@alive = false
	end

	def tick

	end
end