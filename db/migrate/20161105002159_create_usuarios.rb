class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
