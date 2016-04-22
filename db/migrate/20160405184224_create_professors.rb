class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.belongs_to :teacher
      t.belongs_to :calendar
      t.belongs_to :career

      t.timestamps
    end
  end
end
