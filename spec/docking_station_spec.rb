require "docking_station"

describe DockingStation do
  # it "responds to release_bike method" do
  #   expect(subject).to respond_to (:release_bike)
  # end

  it { is_expected.to respond_to (:release_bike)}

  it "Releases a new bike upon .release_bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument}

  it "accepts an bike in the dock" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike



  end




end
