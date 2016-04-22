class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :inicia
      t.date :finaliza
      t.string :period
      t.integer :year
      t.boolean :status

      t.timestamps
    end
  end
end
