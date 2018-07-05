require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listings.new("listing1", "caracas")
listing2 = Listings.new("listing2", "guachinton")
listing3 = Listings.new("listing3", "caracas")
guest1 = Guests.new("andres")
guest2 = Guests.new("emma")
guest3 = Guests.new("chamo")
trip1 = Trips.new(listing1, guest1)
trip2 = Trips.new(listing2, guest2)
trip3 = Trips.new(listing1, guest3)
trip4 = Trips.new(listing3, guest1)


binding.pry
puts 'hi'
