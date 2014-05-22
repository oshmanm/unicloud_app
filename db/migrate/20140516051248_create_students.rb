class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.string :email
    	t.boolean :is_admin
    	t.text :courses_registered
    	t.timestamps
    end
  end
end