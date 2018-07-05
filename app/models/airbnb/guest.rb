class Guests
  @@all = []

attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

# returns an array of all listings a guest
# has stayed at
  def listings
    arr = []
    Trips.all.each do |trip|
      if trip.guest == self
        arr << trip.listing
      end
    end
    arr
  end

# returns an array of all trips a guest has made
def trips
  arr = []
  Trips.all.each do |trip|
    if trip.guest == self
      arr << trip
    end
  end
  arr
end

# returns the number of trips a guest has taken
  def trip_count
    trips.length
  end

# returns an array of all guests who have
 # made over 1 trip
  def self.pro_traveller
    arr = []
    self.all.each { |guest|
      if guest.trip_count > 1
        arr << guest
      end
    }
    arr
  end

# takes an argument of a name (as a string),
# returns all the guests with that name
  def self.find_all_by_name(name)
    self.all.select { |guest|
      guest.name == name
    }
  end

end
