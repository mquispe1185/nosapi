class CreateOrigenes < ActiveRecord::Migration[5.2]
  def change
    create_table :origenes do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
