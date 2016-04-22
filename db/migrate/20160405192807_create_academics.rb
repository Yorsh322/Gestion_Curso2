class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.belongs_to :subject
      t.belongs_to :semester
      t.belongs_to :group
      t.belongs_to :course

      t.timestamps
    end
  end
end
