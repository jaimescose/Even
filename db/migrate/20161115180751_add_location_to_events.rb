class AddLocationToEvents < ActiveRecord::Migration
  def change
  	  change_table :eventos do |t|
      t.remove :lugar
      t.float :latitude
      t.float :longitude
      t.string :address
    end
  end
end
