class AddCareerToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :career_id, :integer
  end
end
