class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :favorited_venues
  has_many :venue_amenities
  has_many :venue_images
  has_many :venue_reviews
end
