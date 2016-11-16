class Addpass < ActiveRecord::Migration
  def change
    change_table :usuarios do |t|
      t.remove :password
      t.string :password_digest
    end
  end
end
