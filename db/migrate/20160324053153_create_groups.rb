class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :category

      t.timestamps
    end
  end
end
