class Register < ActiveRecord::Base
	validates :nombre, presence: true, uniqueness: true 
	validates :telefono, presence:true
	validates :celular, presence:true
	validates :email, presence:true
end
