class FavoritedVenuesController < ApplicationController
    def index
        @favorited_venues = FavoritedVenue.where(FavoritedVenue.user == current_user)
    end

    def create
        @venue = Venue.find(params[:venue_id] || params[:id])
        @user = current_user
        FavoritedVenue.create(venue_id: @venue.id, user_id: @user.id)
    end

    def destroy
        @venue = Venue.find(params[:venue_id] || params[:id])
        @user = current_user
        @favorited_venue = FavoritedVenue.find(params[:favorited_venue_id] || params[:id])
        @favorited_venue.destroy
    end
end
