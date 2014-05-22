class ChangeBuildings < ActiveRecord::Migration
  def change
  	change_table :buildings do |t|
    	t.remove :classroom_id
    end
  end
end
