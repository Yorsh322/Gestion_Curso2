class AddCatalogToAcademic < ActiveRecord::Migration
  def change
    add_column :academics, :catalog_id, :integer
  end
end
