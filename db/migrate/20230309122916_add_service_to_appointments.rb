class AddServiceToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :service, :string
  end
end
