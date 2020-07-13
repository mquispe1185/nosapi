class AddOrigenToAfiliados < ActiveRecord::Migration[5.2]
  def change
    add_reference :afiliados, :origen, foreign_key: true
    add_column :afiliados, :email, :string
  end
end
