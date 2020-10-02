require_relative 'bike'
class DockingStation
  attr_reader :bike

  def initialize
    @stock = []
  end

  def release_bike
    return raise "Docking station empty" if empty?
    @stock.pop
  end
  def dock(bike)
    return raise "Bike station full" if full?
    @stock << bike
  end

  private
  def full?
    @stock.length >= 20 ? true : false
    #return raise "Bike station full" if @stock.length >= 20
  end

  def empty?
    @stock.empty?
  end



end
