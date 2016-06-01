module SnowNasa
  class Earthimg    
    include SnowNasa

    def self.getEarthImages(options = {})
      lat = options[:lat]
      lon = options[:lon]
      dim = options[:dim]
      date = (options[:date].to_d).strftime("%Y-%m-%d")
      cloud_score = options[:cloud_score]
      if cloud_score.nil?
        base_url = "https://api.nasa.gov/planetary/earth/imagery?lon=#{lon}&lat=#{lat}&date=#{date}&api_key=#{nasa_api_key}"
      else
        base_url = "https://api.nasa.gov/planetary/earth/imagery?lon=#{lon}&lat=#{lat}&date=#{date}&cloud_score=True&api_key=#{nasa_api_key}"
      end
      data = open(base_url).read
      JSON.parse(data)
    end
  end
end
