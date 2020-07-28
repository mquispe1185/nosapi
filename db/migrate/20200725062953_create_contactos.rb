class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :telefono
      t.string :email
      t.references :origen, foreign_key: true
      t.references :estadocontacto, foreign_key: true
      t.references :usuario, foreign_key: true
      t.string :observacion
      t.references :created_by
      t.references :updated_by

      t.timestamps
    end

    add_foreign_key :contactos, :usuarios, column: :created_by_id, primary_key: :id
    add_foreign_key :contactos, :usuarios, column: :updated_by_id, primary_key: :id
  end
end
