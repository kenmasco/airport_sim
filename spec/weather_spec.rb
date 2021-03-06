require "weather"

class WeatherSystem; include Weather; end

  describe Weather do
    let(:weather) {WeatherSystem.new}
 
  context "Weather Variables" do

    it "should be able to be sunny" do
      weather.sunny
      expect(weather).to be_sunny
    end
    
    it "should be able to be stormy" do
      weather.sunny
      weather.storm
      expect(weather).to_not be_sunny
    end

    it "should be stormy twenty percent of the time" do
      odds = 0.2
      weather.generate_weather(odds)
      expect(weather).to_not be_sunny
    end

    it "should be sunny eighty percent of the time" do
      odds = 0.8
      weather.generate_weather(odds)
      expect(weather).to be_sunny
    end
  end

  context "Weather & Flying" do

    it 'a plane cannot take off when there is a storm brewing' do
      plane = double :plane
    end


  end
end
