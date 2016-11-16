class Usuario < ActiveRecord::Base
  has_secure_password
  
  validates_uniqueness_of :email
  has_many :eventos
end
