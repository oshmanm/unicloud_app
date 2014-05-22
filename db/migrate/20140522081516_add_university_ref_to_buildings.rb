class AddUniversityRefToBuildings < ActiveRecord::Migration
  def change
    add_reference :buildings, :university, index: true
  end
end
