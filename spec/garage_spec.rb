require "garage"
require "bike"

describe Garage do
  it "repair?" do

    expect(subject).to respond_to(:repair)
  end
end
