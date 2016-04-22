class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :num
      t.string :grupo
      t.integer :numero
      t.integer :a
      t.integer :epo
      t.integer :esr
      t.integer :e1
      t.float :c
      t.integer :d
      t.float :e
      t.integer :f
      t.float :g
      t.string :total
      t.belongs_to :calendar
      t.belongs_to :teacher
      t.belongs_to :subject
      t.belongs_to :semester
      t.belongs_to :career
      t.belongs_to :boss

      t.timestamps
    end
  end
end
