class Afiliado < ApplicationRecord
  validates :dni, uniqueness: true 
  belongs_to :provincia
  belongs_to :localidad, optional: true
  belongs_to :departamento, optional: true
  belongs_to :contactado_by, optional: true
  belongs_to :afiliado_by, optional: true
  belongs_to :adherido_by, optional: true

  belongs_to :contactado_by, :class_name => 'Usuario', optional: true
  belongs_to :afiliado_by, :class_name => 'Usuario', optional: true
  belongs_to :adherido_by, :class_name => 'Usuario', optional: true
  belongs_to :updated_by, :class_name => 'Usuario', optional: true
  belongs_to :created_by, :class_name => 'Usuario', optional: true
  belongs_to :origen

  def fullname
		"#{self.apellido}, #{self.nombre}"
	end

	def self.buscar(search)
		if search
			where('dni ILIKE ?', "%#{search}%").first
		else
			all
		end
  end
  
end
