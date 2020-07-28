class AddFechanacToAfiliados < ActiveRecord::Migration[5.2]
  def change
    add_column :afiliados, :fechanac, :date
    add_column :afiliados, :profesion, :string
  end
end
