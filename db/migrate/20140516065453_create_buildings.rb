class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
    	t.string :name
    	t.integer :avail_rooms
    end
  end
end
