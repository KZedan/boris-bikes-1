require "bike"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :docker

  def initialize()
    @docker = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    if @docker.empty?
      raise "There are bikes available"
    else
      @docker.pop()
    end
  end

  #private
  def full?
    if @docker.length >= DEFAULT_CAPACITY
      return true
    end
  end

  def dock bike
    if !full?
      @docker.push(bike)
    elsif @capacity >= DEFAULT_CAPACITY
      raise "docking station is full"
    end
  end

  #private
  def docker_empty?
    @docker.empty?
  end
end
