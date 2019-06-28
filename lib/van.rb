require "bike"

class Van

  @destination = "garage"
  # @load = Bike.report

  DEFAULT_CAPACITY = 20

  def initialize()
    if @capacity.nil? || @capacity.empty?
      @capacity = 20
    elsif !@capacity
      @capacity = DEFAULT_CAPACITY
    else
      @capacity = 20
    end

  end

  def moveTo
    if @destination != "garage"
      @destination = "garage"
    else
      @destination = "DockingStation"
    end
  end

  def load
    if @load == false
      @destination = "garage"
    else
      "release bike in the dock"
    end
  end

end
