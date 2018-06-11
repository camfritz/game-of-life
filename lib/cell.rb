# TODO
class Cell
	attr_accessor :alive
	def initialize
		@alive = true
	end
	def alive?
		alive
	end

	def kill
		@alive = false
	end
end