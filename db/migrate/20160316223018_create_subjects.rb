class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :nombre
      t.string :clave
      t.integer :practica
      t.integer :teorica
      t.integer :credito
      t.text :caracterizacion
      t.text :objetivo
      t.integer :unit
      t.belongs_to :teacher
      t.belongs_to :semester
      t.belongs_to :career

      t.timestamps
    end
  end
end
