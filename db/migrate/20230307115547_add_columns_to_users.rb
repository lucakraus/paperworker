class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :languages, :string, array: true, default: []
    add_column :users, :services, :string, array: true, default: []
    add_column :users, :district, :string, array: true, default: []
    add_column :users, :rate, :float
    add_column :users, :description, :text
    add_column :users, :availability, :datetime
    add_column :users, :role, :integer
  end
end
