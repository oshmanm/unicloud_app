class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :title
    	t.text :schedule
    	t.integer :course_level
    end
  end
end
