class AddTeacherToFolder < ActiveRecord::Migration
  def change
    add_column :folders, :teacher_id, :integer
  end
end
