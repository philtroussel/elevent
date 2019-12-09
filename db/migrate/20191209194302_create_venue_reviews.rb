class CreateVenueReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_reviews do |t|
      t.references :venue, foreign_key: true
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
