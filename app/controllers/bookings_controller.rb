class BookingsController < ApplicationController
    def index
        @bookings = Booking.where(Booking.user = current_user)
    end

    def show
        find_booking
    end
    
    def create
        @venue = Venue.find(params[:venue_id])
        @booking = Booking.new()
        #authorize @booking
        @booking.date_time = "2019-11-#{params[:booking]['check_in_date_time(3i)']} #{params[:booking]['check_in_date_time(4i)']}:00:00"
        @booking.user = current_user
        @booking.total_price = params[:price]
        @booking.venue = @venue
        @booking.save!
        redirect_to bookings_path
    end

    def edit
        find_booking
        # authorize @venue
    end
    
    def update
        find_booking
        # authorize @venue
        @booking.update(booking_params)
        redirect_to booking_path(@booking)
        # I think we should handle cancellation here and not actually have a destroy -- would need to add a cancel boolean field to the bookings model
    end

    private
    def find_booking
        @booking = Booking.find(params[:id])
    end

    def booking_params
        params.require(:booking).permit(:date_time, :price)
    end

end
