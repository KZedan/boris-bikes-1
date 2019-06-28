require "bike"

describe Bike do

  bike = Bike.new

  it "#working?" do

    expect(bike).to respond_to(:working?)
  end

  it "bikes returned broken or not" do
    subject.report
    expect(subject).to be_broken
    #expect{ subject.dock }.to raise_error
  end

end
