class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :name
      t.date :fecha
      t.string :lugar
      t.text :desc

      t.timestamps null: false
    end
  end
end
