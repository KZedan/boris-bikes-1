require "bike"

class DockingStation

  attr_reader :docker

  def initialize()
    @docker = []
    @capacity = 20
  end

  def release_bike
    if @docker.empty?
      raise "something no bikes literally"
    else
      @docker.pop()
    end
  end

  def full?
    @docker.length >= 20
  end

  def dock bike
    if !full?
      @docker.push(bike)
    else
      raise "docking station is full"
    end
  end
  def docker_empty?
    @docker.empty?
  end
end
