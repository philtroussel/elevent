puts 'Deleting previous data'
Venue.destroy_all
VenueReview.destroy_all
VenueImage.destroy_all
VenueAmenity.destroy_all

venues = [
  {
    name: "ROOFTOP IN THE CENTER OF THE CITY",
    address: "22 avenue pré au bois, 1640 Rhode-Saint-Genèse",
    hourly_price: 50,
    description: "blablabla",
    capacity: 100,
    }
]

venue_reviews = [
  {
    rating: 4,
    description: "Super nice!"
    }
]

venue_images = [
  {
    image: "#"
    }
]

venue_amenities = [
  {
    description: "rooftop, kitchen,..."
    }
]
