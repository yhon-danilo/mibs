class Marca < ActiveRecord::Base
	has_many :articulos #, dependent: :destroy
end
