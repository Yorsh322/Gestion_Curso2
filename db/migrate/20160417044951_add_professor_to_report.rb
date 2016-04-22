class AddProfessorToReport < ActiveRecord::Migration
  def change
    add_column :reports, :professor_id, :integer
  end
end
