class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.boolean :value_one
      t.boolean :value_two
      t.boolean :value_three
      t.boolean :value_four
      t.boolean :value_five
      t.boolean :value_six
      t.text :observation
      t.belongs_to :teacher
      t.belongs_to :boss
      t.belongs_to :principal

      t.timestamps
    end
  end
end
