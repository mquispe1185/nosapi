class AfiliadoEstadisticaSerializer < ActiveModel::Serializer
  attributes :id, :afiliado, :adherido
  has_one :afiliado_by, serializer: UsuarioShortSerializer
  has_one :adherido_by, serializer: UsuarioShortSerializer
end
