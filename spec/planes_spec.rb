require 'plane'

describe Plane do 

  let(:plane) {Plane.new}

  it "has a flying status when created" do
    expect(plane).not_to be_flying
  end

  it "has a flying status when in the air" do
    plane.airborne
    expect(plane).to be_flying
  end

  it "changes it's status to 'flying' after taking off" do
    plane.take_off
    expect(plane).to be_flying
  end

  it "should be able to land" do
    plane.airborne
    plane.land
    expect(plane).not_to be_flying
  end

  it "should change it's status to 'landed' after it lands" do
    plane.landed
    expect(plane).not_to be_flying
  end
  
end