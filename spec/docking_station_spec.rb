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
      expect(subject.dock(bike)).to eq bike
    end

    it {is_expected.to respond_to(:bike)}

    it "checks that the release_bike 'bike' can be docked and recalls the bike" do
    station = DockingStation.new
    station.dock(Bike.new)
    bike = station.release_bike
    docked_bike = station.dock(bike)
    expect(station.bike).to eq station.dock(bike)
    end

  describe "#release_bike" do
    it "raises an error when no bikes are available" do
      expect {DockingStation.new.release_bike}.to raise_error ("There are no bikes available")
    end
  end
end
