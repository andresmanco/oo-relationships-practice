class Trips
attr_accessor :listing , :guest
  @@all = []

  def initialize(listing, guest)
  @listing = listing
  @guest = guest
  @@all << self
  end

  def self.all
    @@all
  end

# returns the listing object for the trip
  def listing
    @listing
  end

# returns the guest object for the trip
  def guest
    @guest
  end

end
