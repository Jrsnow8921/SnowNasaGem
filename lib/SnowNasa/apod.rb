module SnowNasa
  class Apod         
    include SnowNasa

    def self.getAstroPic
      base_url = "https://api.nasa.gov/planetary/apod?api_key=#{@@nasa_api_key}"
      data = open(base_url).read
      JSON.parse(data)
    end
  end
end
