require_relative 'bike'
class DockingStation
  attr_reader :bike

  def initialize
    @stock = []
  end

  def release_bike
    return raise "Docking station empty" if @stock.empty?
    @stock.pop
  end
  def dock(bike)
    return raise "Bike station full" if @stock.length == 20

    @stock << bike
  end
end
