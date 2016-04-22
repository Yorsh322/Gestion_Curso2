class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.belongs_to :summary
      t.belongs_to :calendar
      t.belongs_to :semester
      t.belongs_to :career
      t.string :grupo
      t.integer :docente_id
      t.string :departamento

      t.timestamps
    end
  end
end
