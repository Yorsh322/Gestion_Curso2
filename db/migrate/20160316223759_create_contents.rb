class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :unidad
      t.string :tema
      t.text :subtema
      t.text :fuente
      t.text :didactico
      t.belongs_to :summary

      t.timestamps
    end
  end
end
