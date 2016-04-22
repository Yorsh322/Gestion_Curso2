class CreateLearnings < ActiveRecord::Migration
  def change
    create_table :learnings do |t|
      t.text :especifica
      t.text :actividad
      t.text :teaching
      t.text :portafolio
      t.belongs_to :content

      t.timestamps
    end
  end
end
