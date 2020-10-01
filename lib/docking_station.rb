require_relative 'bike'
class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
  end
  def release_bike
    Bike.new
  end
  def dock
    "#{DockingStation.bike} is docked!"
  end
end
