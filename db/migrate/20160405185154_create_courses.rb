class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.belongs_to :student
      t.belongs_to :calendar
      t.belongs_to :career

      t.timestamps
    end
  end
end
