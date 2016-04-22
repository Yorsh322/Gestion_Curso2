class AddValidateToStudent < ActiveRecord::Migration
  def change
    add_column :students, :validate, :boolean
  end
end
