class AddUsuarioIdToEventos < ActiveRecord::Migration
  def change
    add_reference :eventos, :usuario, index: true, foreign_key: true
  end
end
