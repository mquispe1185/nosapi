class AddSexoToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :sexo, :integer, detault: 0
  end
end
