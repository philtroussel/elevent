class CreateFavoritedVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :favorited_venues do |t|
      t.references :venue, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
