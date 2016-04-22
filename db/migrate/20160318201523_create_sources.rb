class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.text :fuente
      t.text :didactic
      t.belongs_to :content

      t.timestamps
    end
  end
end
