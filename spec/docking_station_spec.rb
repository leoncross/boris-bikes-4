require "docking_station"

describe DockingStation do
  # it "responds to release_bike method" do
  #   expect(subject).to respond_to (:release_bike)
  # end

    it { is_expected.to respond_to (:release_bike)}

    it "Releases a new bike upon .release_bike" do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike.working?).to eq true
    end

    it { is_expected.to respond_to(:dock).with(1).argument}

    it "accepts an bike in the dock" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it {is_expected.to respond_to(:bike)}

# This was a failed test - I dont know where I got this from??

    # it "checks that the release_bike 'bike' can be docked and recalls the bike" do
    # station = DockingStation.new
    # station.dock(Bike.new)
    # bike = station.release_bike
    # docked_bike = station.dock(bike)
    # expect(station.bike).to eq station.dock(bike)
    # end

  # describe "DockingStation accepts custom capacity size"

  describe "#release_bike" do # TO REMOVE? FIX? What to do?
    it "raises an error when no bikes are available" do
      expect{DockingStation.new.release_bike}.to raise_error ("There are no bikes available")
    end
  end

  describe "#dock" do
    it "raises error if a bike is in the docking_station" do
      subject.dock(Bike.new)
      expect{subject.dock(Bike.new)}.to raise_error ("The docking station is full")
    end
  end

  describe "#dock(bike)" do
    it "raises an error as it is above capacity" do
      20.times {subject.dock(Bike.new)}.to raise_error ("The docking station is full")
    end
  end
end
