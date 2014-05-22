class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
    	t.string :room_num
    	t.boolean :is_filled, default: false
    end
  end
end
