class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.time :time
      t.integer :bus_id
      t.integer :stop_id
    end
  end
end
