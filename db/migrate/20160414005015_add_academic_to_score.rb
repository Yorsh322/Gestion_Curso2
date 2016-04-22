class AddAcademicToScore < ActiveRecord::Migration
  def change
    add_column :scores, :academic_id, :integer
  end
end
