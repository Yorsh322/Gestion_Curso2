class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.belongs_to :subject

      t.timestamps
    end
  end
end
