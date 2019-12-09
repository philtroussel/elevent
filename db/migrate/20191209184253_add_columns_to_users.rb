class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :venue_admin, :boolean, default: false
    add_column :users, :caterer_admin, :boolean, default: false
    add_column :users, :performer_admin, :boolean, default: false
  end
end
