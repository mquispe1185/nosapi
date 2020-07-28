class AddActivoToContactos < ActiveRecord::Migration[5.2]
  def change
    add_column :contactos, :activo, :boolean, default: true
    add_column :afiliados, :has_dni, :boolean, default: false
  end
end
