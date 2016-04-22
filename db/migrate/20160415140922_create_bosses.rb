class CreateBosses < ActiveRecord::Migration
  def change
    create_table :bosses do |t|
      t.string :academico
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
