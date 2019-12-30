class VenueReviewsController < ApplicationController
    def index
        @venue_reviews = VenueReview.where(VenueReview.venue = params(:venue_id))
    end

    def new
        @venue_review = VenueReview.new
    end

    def create
        @venue = Venue.find(params[:venue_id])
        @venue_review = VenueReview.new(venue_review_params)
        # @venue_review.user = current_user
        @venue_review.venue = @venue
        if @venue_review.save
            redirect_to new_review_path
        else
            flash[:alert] = "Something went wrong."
            render :new
    end

    private

    def venue_review_params
        params.require(:venue_review).permit(:rating, :description)
    end
end
