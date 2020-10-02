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

  it "Changes default capacity according to user input" do
    allow($stdin).to receive(:gets).and_return("25")
    input = $stdin.gets

    expect(DockingStation.new(input).capacity).to eq(25)
  end

  it 'Raises error if user tries to undock broken bike' do
    bike = Bike.new
    subject.dock(bike)
    # report broken Bike
    expect{subject.release_bike}.to raise_error
  end

  it { is_expected.to respond_to :report_broken }

  it 'Reports broken bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)

    allow($stdin).to receive(:gets).and_return("yes")
    input = $stdin.gets

    expect(docking_station.report_broken(input)).to eq("Thank you for your report")
  end


end
