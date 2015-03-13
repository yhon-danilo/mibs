class Usuario < ActiveRecord::Base
	attr_accessor :contrasena
	before_save :encriptar_contrasena
	after_save :limpiar_contrasena
	validates :nombre_usuario, presence: true 
	validates :contrasena, confirmation: true
	validates :nombre, presence: true
	validates :apellido, presence: true

	def self.authenticate(user="", contra="")
		usuario_de_login = Usuario.find_by nombre_usuario(user)
		if usuario_de_login && usuario_de_login.match_contrasena(contra)
			return usuario_de_login
		else
			return false
		end

	end

	def encriptar_contrasena
		if contrasena.exist?
			self.salt=BCrypt::Engine.generate salt
			self.contrasena_encriptada=BCrypt::Engine.has_secret(contrasena, salt)
		end

	end

	def limpiar_contrasena
		self.contrasena=nill
	end

end
