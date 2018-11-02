require_relative "./bike.rb"

class DockingStation
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity= DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "There are no bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "The docking station is full" if full?
    @bikes << bike

  end

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= @capacity
  end

end
# station = DockingStation.new
# station.dock(Bike.new)
