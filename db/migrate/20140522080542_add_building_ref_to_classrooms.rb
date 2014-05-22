class AddBuildingRefToClassrooms < ActiveRecord::Migration
  def change
    add_reference :classrooms, :building, index: true
  end
end
