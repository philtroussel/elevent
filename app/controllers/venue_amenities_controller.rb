class VenueAmenitiesController < ApplicationController
    def index
        @venue_amenities = VenueAmenity.where((venue_amenity.venue = params(:venue_id)))
    end

    def create
        @venue = Venue.find(params[:venue_id])
        @venue_amenity = VenueAmenity.new(venue_amenity_params)
        @venue_amenity.venue = @venue
        @venue_amenity.save!
        redirect_to venue_path(@venue)
    end

    def destroy
        find_venue_amenity
        @venue_amenity.destroy
        redirect_to venue_path(@venue)
    end

    private

    def find_venue_amenity
        @venue_amenity = VenueAmenity.find(params[:id])
    end

    def venue_image_params
        params.require(:venue_amenity).permit(:description)
    end
end
