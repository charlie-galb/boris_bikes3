require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'docks bike' do
    docking_station = DockingStation.new

    expect(docking_station.dock).to eq("#{@bike} is docked!")

    p @bike
    p bike

  end
end
