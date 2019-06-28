# The purpose of this class is to give us an instance of
# something that includes `BikeContainer`, to initially run tests against
class BikeContainerTest
  include BikeContainer
end

# `it_behaves_like BikeContainer` imports all the tests in the shared example
describe BikeContainerTest do
  it_behaves_like BikeContainer
end

describe 'capacity' do
  it 'can be overridden on initialize' do
    random_capacity = Random.rand(100)
    subject = described_class.new random_capacity
    expect(subject.capacity).to eq random_capacity
  end
end

describe 'add_bike' do
  it 'receives a bike' do
    subject.add_bike double :bike
    expect(subject).not_to be_empty
  end
end
