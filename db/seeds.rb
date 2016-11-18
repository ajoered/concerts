require 'ffaker'

1.upto(10).each do |i|
	concert = Concert.create!(venue: FFaker::Venue.name, 
					artist: FFaker::Music.artist, 
					city: FFaker::Address.city, 
					date: FFaker::Time.date, 
					price: 30 + Random.rand(100), 
					description: FFaker::Book.description)
	end