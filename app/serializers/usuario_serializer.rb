class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :dni, :nombre, :email,:telefono,:sexo, :provincia_id, :departamento_id,:localidad_id,:rol_id
  belongs_to :rol

end
