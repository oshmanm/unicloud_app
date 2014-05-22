class ChangeClassrooms < ActiveRecord::Migration
  def change
  	change_table(:classrooms) do |t|
  		t.column :current_occupancy, :integer
  		t.column :max_occupancy, :integer
  		t.remove :is_filled
  	end
  end
end
