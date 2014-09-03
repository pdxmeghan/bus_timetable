class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.integer :number
      t.integer :line_id
    end
  end
end
