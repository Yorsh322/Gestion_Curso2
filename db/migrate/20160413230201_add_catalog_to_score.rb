class AddCatalogToScore < ActiveRecord::Migration
  def change
    add_column :scores, :catalog_id, :integer
  end
end
