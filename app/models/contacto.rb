class Contacto < ApplicationRecord
  belongs_to :origen
  belongs_to :estadocontacto
  belongs_to :usuario, optional: true
  belongs_to :updated_by, :class_name => 'Usuario', optional: true
  belongs_to :created_by, :class_name => 'Usuario', optional: true
end
