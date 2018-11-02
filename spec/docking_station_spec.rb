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

    it "capacity is changed to 30 when we set up the docking_station with 30" do
      station_30 = DockingStation.new(30)
      expect(station_30.capacity).to eq(30)
    end

    it "capacity is by default 20 when DockingStation.new is passed" do
      expect(DockingStation.new.capacity).to eq (20)
    end



  describe "#release_bike" do
    it "raises an error when no bikes are available" do
      expect {DockingStation.new.release_bike}.to raise_error ("There are no bikes available")
    end


    # describe "#dock(bike)" do
    #   it "raises an error when there is already a bike in the dock" do
    #     subject.dock(Bike.new)
    #     expect {subject.dock(Bike.new)}.to raise_error ("The docking station is full")
    #   end

      it "raises an error when DockingStation is full" do
        subject.capacity.times {subject.dock(Bike.new)}
        expect {subject.dock(Bike.new)}.to raise_error ("The docking station is full")
      end
    end



  end
