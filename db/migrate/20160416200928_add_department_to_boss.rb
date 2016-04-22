class AddDepartmentToBoss < ActiveRecord::Migration
  def change
    add_column :bosses, :department, :string
  end
end
