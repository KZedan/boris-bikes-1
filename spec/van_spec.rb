require "van"
require "bike"
require "DockingStation"

van = Van.new

describe Van do
  it "moveTo?" do

    expect(van).to respond_to(:moveTo)
  end
  it "load?" do

    expect(van).to respond_to(:load)
  end

  it "#load" do
    expect{ van.load }.to raise_error
  end

  it "#moveTo" do
    expect{ van.moveTo }.to raise_error
  end

end
