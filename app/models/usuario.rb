# frozen_string_literal: true

class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  validates :dni, uniqueness: true 
  belongs_to :rol
  belongs_to :provincia, optional: true
  belongs_to :departamento, optional: true
  belongs_to :localidad, optional: true
  
end
