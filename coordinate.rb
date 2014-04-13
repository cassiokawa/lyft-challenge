#!/usr/bin/env ruby

# Class to represent a coordinate on Earth.
class Coordinate

  attr_accessor :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude, @longitude = latitude, longitude
  end

  def to_unescaped_query_param
    "#{@latitude}, #{@longitude}"
  end

  def ==(other)
    !!other && [@latitude, @longitude] == [other.latitude, other.longitude]
  end
end
