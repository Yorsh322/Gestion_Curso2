class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.text :generica
      t.text :instrumental
      t.text :interpersonal
      t.text :sistematica
      t.belongs_to :content

      t.timestamps
    end
  end
end
