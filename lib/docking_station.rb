require_relative 'bike'
class DockingStation
  attr_reader :bike

  def initialize
    @stock = []
  end

  def release_bike
    return raise "Docking station empty" if @stock.empty?
    Bike.new
  end
  def dock(bike)
    @bike = bike
  end
end
