require_relative "./bike.rb"

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == 0
    # this is wrong!  
      # raise ArgumentError.new ("There are no bikes in the dock")
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end


end
