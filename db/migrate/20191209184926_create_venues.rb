class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :hourly_price
      t.string :description
      t.integer :capacity
      t.boolean :approved
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
