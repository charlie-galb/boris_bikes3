require 'docking_station'
describe DockingStation do

  it "Releases a bike if one is available" do

    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
  end

  it "raises error if user requests bike from empty station" do
    expect { DockingStation.new.release_bike }.to raise_error("Docking station empty")
  end
  it "raises error if user tries to dock bike in full station" do

    expect{ 21.times { subject.dock(Bike.new) } }.to raise_error("Bike station full")
  end

  #check takes argument
  it "returns user input capacity" do
    docking_station = DockingStation.new("25")
    expect(docking_station.capacity).to eq(25)
  end

  #check takes capacity
  #if no argument - default to DOCKING_STATION
  it "returns default capacity with no argument" do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq(20)
  end

end
