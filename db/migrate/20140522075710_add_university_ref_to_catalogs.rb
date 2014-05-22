class AddUniversityRefToCatalogs < ActiveRecord::Migration
  def change
    add_reference :catalogs, :university, index: true
  end
end
