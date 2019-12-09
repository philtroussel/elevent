class CreateCaterers < ActiveRecord::Migration[5.2]
  def change
    create_table :caterers do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :pricer_per_person
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
