class AddUniversityRefToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :university, index: true
  end
end
