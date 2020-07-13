class CreateAfiliados < ActiveRecord::Migration[5.2]
  def change
    create_table :afiliados do |t|
      t.string :apellido
      t.string :nombre
      t.string :dni
      t.integer :sexo, detault: 0
      t.string :domicilio
      t.references :provincia, foreign_key: true
      t.references :localidad, foreign_key: true
      t.references :departamento, foreign_key: true
      t.string :telefono
      t.string :celular
      t.boolean :contactado, default: false 
      t.boolean :afiliado, default: false 
      t.boolean :adherido, default: false 
      t.boolean :es_afiliador, default: false   
      t.references :contactado_by
      t.references :afiliado_by
      t.references :adherido_by
      t.references :created_by
      t.references :updated_by
      t.string :observaciones
      t.boolean :activo, default: true

      t.timestamps
    end

    add_foreign_key :afiliados, :usuarios, column: :contactado_by_id, primary_key: :id
    add_foreign_key :afiliados, :usuarios, column: :afiliado_by_id, primary_key: :id
    add_foreign_key :afiliados, :usuarios, column: :adherido_by_id, primary_key: :id
    add_foreign_key :afiliados, :usuarios, column: :created_by_id, primary_key: :id
    add_foreign_key :afiliados, :usuarios, column: :updated_by_id, primary_key: :id
  end
end
