require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  #it 'releases working bikes' do
  #  bike = subject.release_bike
  #  expect(bike).to be_working
  #end
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it "raises error if user requests bike from empty station" do
    expect { DockingStation.new.release_bike }.to raise_error("Docking station empty")
  end
  it "raises error if user tries to dock bike in full station" do
    bike = Bike.new
    subject.dock(bike)
    bike2 = Bike.new
    expect{ subject.dock(bike2) }.to raise_error("Bike station full")
  end
end
