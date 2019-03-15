require_relative 'bike'

class DockingStation
	attr_reader :bikes
	def initialize
		@bikes = []	
	end

	def release_bike
		fail 'No bikes available' if @bikes.empty?
		@bikes.pop		
	end

	def dock(bike)
		fail 'Docking station full' if full?
		@bikes.push(bike)
	end

	def full?
		@bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end
end
