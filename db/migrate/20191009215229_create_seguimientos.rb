class CreateSeguimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :seguimientos do |t|
      t.references :requerimiento, foreign_key: true
      t.string :titulo
      t.text :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
