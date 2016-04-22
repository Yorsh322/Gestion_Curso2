class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :grado
      t.boolean :current
      t.belongs_to :calendar

      t.timestamps
    end
  end
end
