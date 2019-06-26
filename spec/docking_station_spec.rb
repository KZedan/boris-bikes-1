require "DockingStation"
require "bike"

describe DockingStation do

  self::DEFAULT_CAPACITY = 20
  default = self::DEFAULT_CAPACITY

  docker_station = DockingStation.new

  it "sums the prices of its line items" do

    expect(docker_station).to be_instance_of(DockingStation)
  end
  it "#release_bike" do
    docker_station.docker.push(Bike.new)
    expect(docker_station.release_bike).to be_instance_of(Bike)
    expect{ docker_station.release_bike }.to raise_error
  end
  it "dock" do
    bike = Bike.new
    expect(docker_station).to respond_to(:dock)
  end
  it "docker is empty?" do

    expect(docker_station.docker_empty?).to be true
  end
  it "docker capacity is 20?" do
    docker2_station = DockingStation.new
    20.times { docker2_station.dock Bike.new}
    expect(docker2_station.docker.length).to eq(20)
  end
  it "has docker got default capacity of 20?" do
    default = 30
    docker3_station = DockingStation.new
    default.times { docker3_station.dock Bike.new}
    expect(docker3_station.docker.length).to eq(default)
  end
end
