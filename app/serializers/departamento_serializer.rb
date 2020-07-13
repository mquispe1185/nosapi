class DepartamentoSerializer < ActiveModel::Serializer
  attributes :id, :nombre
  #has_one :provincia
end
