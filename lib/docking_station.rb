require_relative "./bike.rb"

class DockingStation
  attr_reader :bike

  def initialize(capacity= 20)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "There are no bikes available" unless @bikes.length < @capacity
    @bikes.pop
  end

  def dock(bike)
    fail "The docking station is full" if @bike
    @bikes << bike
  end


end
