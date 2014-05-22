class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
    	t.integer :courses_count
    end
  end
end
