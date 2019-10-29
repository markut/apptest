class Requerimiento < ApplicationRecord
	belongs_to :user
	belongs_to :asignado_a, class_name: 'User', foreign_key: 'asignado_a_id', optional:true
	has_many :seguimiento

end
