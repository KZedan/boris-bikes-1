require "bike"

class DockingStation
  
  attr_reader :docker  

  def initialize()
    @docker = []
  end

  def release_bike
    raise "something no bikes literally"
    #return Bike.new
  end
  def dock bike
    @docker.push(bike)
  end
  def docker_empty?
    @docker.empty?
  end
end
