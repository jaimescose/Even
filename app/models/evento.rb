class Evento < ActiveRecord::Base
	belongs_to :usuario
	geocoded_by :address
	after_validation :geocode
end
