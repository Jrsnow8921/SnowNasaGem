module SnowNasa
  class Neobjects       
    include SnowNasa

    def self.getNeo(options = {})
      start_date = (options[:start_date].to_date).strftime("%Y-%m-%d")
      end_date = (options[:end_date].to_date).strftime("%Y-%m-%d")
      base_url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{@@nasa_api_key}"
      data = open(base_url).read
      JSON.parse(data)
    end
  end
end
