class LocalidadSerializer < ActiveModel::Serializer
  attributes :id, :nombre
  #has_one :departamento
 # has_one :provincia
end
