class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.integer :status, default: 0
      t.text :description
      t.references :paperworker, foreign_key: { to_table: :users }
      t.references :immigrant, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
