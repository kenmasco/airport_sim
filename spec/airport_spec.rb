require 'airport'

describe Airport do
  
  let (:airport) { Airport.new(:capacity => 25)}


  it "can set it's capacity on being intialized" do
    expect(airport.capacity).to eq (25)
  end

  context "Taking off and landing" do

    it "a plane can land" do
      plane = double :plane, land: nil

      airport.arrival(plane)
      expect(airport.planes.length).to eq(1)
    end

    it "a plane can take off" do
      plane = double :plane, take_off: nil

      airport.arrival(plane)
      airport.departure(plane)
      expect(airport.planes.length).to eq(0)
    end
  end

  context "Traffic control" do

    it "a plane cannot land if the airport is full" do
      plane = double :plane
      airport.capacity.times {airport.arrival(plane)} 
      expect(lambda { airport.arrival(plane) }).to raise_error(RuntimeError)
    end

    it "a plane cannot takeoff if the the airport is empty" do
      plane = double :plane
      if airport.plane_count == 0
        expect(lambda {airport.departure(plane)}).to raise_error(RuntimeError)
      end
    end
  end
end