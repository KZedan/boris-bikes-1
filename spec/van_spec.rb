require "van"
require "bike"

van = Van.new

describe Van do
  it "moveTo?" do

    expect(van).to respond_to(:moveTo)
  end
  it "load?" do

    expect(van).to respond_to(:load)
  end
end
