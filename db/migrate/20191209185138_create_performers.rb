class CreatePerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :performers do |t|
      t.string :name
      t.integer :hourly_price
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
