class AddPricePerPersonToCaterers < ActiveRecord::Migration[5.2]
  def change
    add_column :caterers, :price_per_person, :integer
  end
end
