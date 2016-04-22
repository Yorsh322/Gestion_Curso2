class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score_one
      t.integer :score_two
      t.integer :score_three
      t.integer :score_four
      t.integer :score_test
      t.integer :score_final
      t.belongs_to :subject
      t.belongs_to :student

      t.timestamps
    end
  end
end
