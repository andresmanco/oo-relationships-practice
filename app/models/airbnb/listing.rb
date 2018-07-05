require 'pry'
class Listings

  @@all = []
attr_accessor :city, :listing_name

  def initialize(listing_name, city)
    @listing_name = listing_name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

# returns an array of all guests who have stayed
# at a listing
  def guest
    arr = []
    Trips.all.each do |trip|
      if trip.listing == self
        arr << trip.guest
      end
    end
    arr
  end

# returns an array of all trips at a listing
  def trips
    arr = []
    Trips.all.each do |trip|
      if trip.listing == self
        arr << trip
      end
    end
    arr
  end

# returns the number of trips that have been
# taken to that listing
  def trip_count
    trips.length
  end

# takes an argument of a city name (as a string)
# and returns all the listings for that city
  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.city == city
    end
  end

# finds the listing that has had the most trips
  def self.most_popular
    popular = self.all[1].trip_count
    list = ""
    self.all.each do |listing|
      if popular < listing.trip_count
        popular = listing.trip_count
        list = listing
      end
    end
    list
  end

end
