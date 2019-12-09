class CreateVenueAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_amenities do |t|
      t.references :venue, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
