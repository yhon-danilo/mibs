class Usuario < ActiveRecord::Base
	attr_accessor :password, :confirmacion_contrasena
	before_save :encriptar_contrasena
	after_save :limpiar_contrasena
	validates :nombre_usuario, presence: true 
	validates :password, confirmation: true
	validates :nombre, presence: true
	validates :apellido, presence: true

	def self.authenticate(user="", contra="")
		usuario_de_login = Usuario.find_by_nombre_usuario(user)
		if usuario_de_login && usuario_de_login.match_contrasena(contra)
			return usuario_de_login
		else
			
			return false

		end

	end

	def match_contrasena(contra="")
		contrasena == BCrypt::Engine.hash_secret(contra, salt)

	end

	def encriptar_contrasena
		if password.present?
			self.salt=BCrypt::Engine.generate_salt
			self.contrasena=BCrypt::Engine.hash_secret(password, salt)
		end

	end

	def limpiar_contrasena
		self.password=nil
	end

end
