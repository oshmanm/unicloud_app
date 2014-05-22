class CreateUniversitys < ActiveRecord::Migration
  def change
    create_table :universitys do |t|
    	t.string :name
    end
  end
end
