require_relative 'bike'
class DockingStation
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @stock = []
    if ("1".."30").include?(capacity)
      @capacity = capacity.to_i
    else
      @capacity = DEFAULT_CAPACITY
    end
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
    @stock.length >= @capacity ? true : false
    #return raise "Bike station full" if @stock.length >= 20
  end

  def empty?
    @stock.empty?
  end

end
