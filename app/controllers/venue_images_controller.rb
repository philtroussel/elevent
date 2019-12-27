class VenueImagesController < ApplicationController
    def index
        @venue_images = @Venue_image.where(venue_image.venue = params(:venue_id))
    end

    def create
        @venue = Venue.find(params[:venue_id])
        @venue_image = Venue_image.new(venue_image_params)
        @venue_image.venue = @venue
        @venue_image.save!
        redirect_to venue_path(@venue)
    end

    def destroy
        find_venue_image
        @venue_image.destroy
        redirect_to venue_path(@venue)
    end

    private

    def find_venue_image
        @venue_image = Venue_image.find(params[:id])
    end

    def venue_image_params
        params.require(:venue_image).permit(:image)
    end
end
