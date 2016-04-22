class CreateAcquisitions < ActiveRecord::Migration
  def change
    create_table :acquisitions do |t|
      t.text :programa
      t.text :real
      t.text :observacion
      t.text :revision
      t.integer :thp
      t.integer :thr
      t.belongs_to :content

      t.timestamps
    end
  end
end
