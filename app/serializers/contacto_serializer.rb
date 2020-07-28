class ContactoSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :telefono, :email, :observacion, :estadocontacto_id, :origen_id
  has_one :origen
  has_one :estadocontacto
  has_one :usuario, serializer: UsuarioShortSerializer
end
