class RemovePricerPerPersonFromCaterers < ActiveRecord::Migration[5.2]
  def change
    remove_column :caterers, :pricer_per_person, :string
  end
end
