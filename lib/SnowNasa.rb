require 'SnowNasa/version'
#require 'SnowNasa/AstroPicOfDay'
require 'SnowNasa/NearEarthObjects'
require 'SnowNasa/EarthImagery'
require 'SnowNasa/MarsRoverPhotos'



require 'json'
require 'open-uri'
require 'rest-client'
require 'colorize'


module SnowNasa
  attr_accessor :nasa_api_key
  
  def self.nasa_api_key(nasa_api_key)
    @@nasa_api_key = nasa_api_key
  end

  def self.get_nasa_api_key
    return @@nasa_api_key
  end
end
