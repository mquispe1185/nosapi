class CreateEstadocontactos < ActiveRecord::Migration[5.2]
  def change
    create_table :estadocontactos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
