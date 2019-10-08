class CreateRequerimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :requerimientos do |t|
      t.references :usuario, foreign_keys:true
      t.string :asunto
      t.text :notas
      t.date :fecha, index:true

      t.timestamps
    end
  end
end
