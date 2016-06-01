# SnowNasa

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/SnowNasa`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'SnowNasa'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install SnowNasa


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
