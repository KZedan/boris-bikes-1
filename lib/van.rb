require "bike"
require "DockingStation"

class Van

  DEFAULT_CAPACITY = 5

  attr_reader :docker

  def initialize()
    @docker = []
    bike = Bike.new
    if @capacity.nil? || @capacity.empty?
      @capacity = 5
    elsif !@capacity
      @capacity = DEFAULT_CAPACITY
    else
      @capacity = 5
    end
  end

  def moveTo
    if @destination.empty? || @destination.nil?
      @destination = "garage"
    elsif @destination == "garage"
      @destination = "DockingStation"
    else
      raise "Driver are on the brake"
    end

  end

  #private
  def full?
    if @docker.length >= DEFAULT_CAPACITY
      return true
    end
  end

  def load bike
    if bike.broken?
      @docker.push(bike)
    else
      raise "bike stay in the dock"
    end
  end

end
