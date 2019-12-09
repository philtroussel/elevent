class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :date_time
      t.integer :price
      t.boolean :approved
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true
      t.references :caterer, foreign_key: true
      t.references :performer, foreign_key: true

      t.timestamps
    end
  end
end
