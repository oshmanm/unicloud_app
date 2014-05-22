class AddCatalogRefToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :catalog, index: true
  end
end
