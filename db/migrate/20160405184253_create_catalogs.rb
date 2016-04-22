class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.belongs_to :subject
      t.belongs_to :group
      t.belongs_to :semester
      t.belongs_to :professor

      t.timestamps
    end
  end
end
