require 'plane'

describe Plane do 

  let(:plane) {Plane.new}

  context "when created" do

    it "should be flying" do
      expect(plane).to be_flying
    end
  end

  context "Flying & Taking Off" do
    it "has a flying status when in the air" do
      expect(plane).to be_flying
    end

    it "changes it's status to 'flying' after taking off" do
      plane.take_off
      expect(plane).to be_flying
    end
  end

  context "Landing" do

    it "should be able to land" do
      plane.land
      expect(plane).not_to be_flying
    end

    it "should change it's status to 'not flying' after it lands" do
      plane.landed
      expect(plane).not_to be_flying
    end 
  end
end