class CreateTripDestinations < ActiveRecord::Migration
  def change
    create_table :trip_destinations do |t|
      t.integer :destination_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
