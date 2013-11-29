require 'plane'

describe Plane do 

  let(:plane) {Plane.new}

  it "should be on the ground when created" do
    expect(plane).not_to be_flying
  end

  it "should be able to fly" do
    plane.take_off
    expect(plane.flying?).to be_true
  end

  it "should be able to land" do
    plane.land
    expect(plane.flying?).to be_false
  end
  
end