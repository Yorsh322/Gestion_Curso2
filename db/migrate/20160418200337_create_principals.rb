class CreatePrincipals < ActiveRecord::Migration
  def change
    create_table :principals do |t|
      t.string :academico
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
