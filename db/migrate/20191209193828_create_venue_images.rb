class CreateVenueImages < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_images do |t|
      t.references :venue, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
