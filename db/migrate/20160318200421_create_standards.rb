class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.text :conceptual
      t.text :procedimental
      t.text :actitudinal
      t.belongs_to :content

      t.timestamps
    end
  end
end
