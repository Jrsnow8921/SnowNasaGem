# SnowNasa

## How to obtain a Nasa Api Key
  https://api.nasa.gov/index.html#apply-for-an-api-key
  #Apply for an api key, and it will be sent to your email.
  #Once you recieve your api key you are good to go. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'SnowNasa'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install SnowNasa

## Install the initializer 
```ruby
  rails g snow_nasa:config
  #this is optional and it makes it easy to set the nasa_api_key only once, otherwise you will need to set the nasa_api_key global each time you make a request.  
```

## Get the Astronomy Picture of the Day

```ruby
   SnowNasa::Apod.getAstroPic
```

## Get Earth Images 

```ruby
  SnowNasa::Earthimg.getEarthImages(:lat => "1.5", :lon => "100.75", :date => "2014-02-01", :cloud_code => "True")
  #cloud_code is optional. 
```

## Get Mars Rover Pics

Get a list of cameras attached to the rovers 

```ruby
    SnowNasa::Marsroverphotos.cameras
```

Get pictures from the rover 

```ruby
  SnowNasa::Marsroverphotos.getMarsPics(:sol => "1000", :camera => "fhaz", :page => "1", :rover => "curiosity")
```

## Get Near Earth Objects (Asteroids)

```ruby
  SnowNasa::Neobjects.getNeo(:start_date => "2016-05-27", :end_date => "2016-05-31")
```
