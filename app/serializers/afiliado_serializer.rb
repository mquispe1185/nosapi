class AfiliadoSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :dni, :sexo, :domicilio, :telefono, :celular,:email, :contactado, :afiliado, :adherido, :observaciones,
              :provincia_id, :departamento_id,:localidad_id, :nombre, :apellido,:contactado_by_id,:afiliado_by_id, :adherido_by_id,
              :created_by_id,:updated_by_id, :origen_id
  has_one :provincia
  has_one :localidad
  has_one :departamento
  has_one :contactado_by, serializer: UsuarioShortSerializer
  has_one :afiliado_by, serializer: UsuarioShortSerializer
  has_one :adherido_by, serializer: UsuarioShortSerializer
  has_one :created_by, serializer: UsuarioShortSerializer
  has_one :updated_by, serializer: UsuarioShortSerializer
  has_one :origen
end
