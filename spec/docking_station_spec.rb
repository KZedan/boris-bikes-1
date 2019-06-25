require "DockingStation"
require "bike"

describe DockingStation do

  docker_station = DockingStation.new

  it "sums the prices of its line items" do

    expect(docker_station).to be_instance_of(DockingStation)
  end
  it "#release_bike" do

    #expect(docker_station.release_bike).to be_instance_of(Bike)
    expect{ docker_station.release_bike }.to raise_error
  end
  it "" do
    bike = Bike.new
    expect(docker_station).to respond_to(:dock)
  end
  it "docker is empty?" do
    
    expect(docker_station.docker_empty?).to be true
  end
end
