class AddUserToVenueReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :venue_reviews, :user, foreign_key: true
  end
end
