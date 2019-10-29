class AddAsignadoAToRequerimiento < ActiveRecord::Migration[5.2]
  def change
    add_reference :requerimientos, :asignado_a, index: true
  end
end
