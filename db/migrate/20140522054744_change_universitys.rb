class ChangeUniversitys < ActiveRecord::Migration
  def change
  	change_table :universitys do |t|
    	t.remove :building_id, :catalog_id
    end
  end
end