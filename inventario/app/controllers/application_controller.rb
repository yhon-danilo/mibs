class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def autenticar_usuario
  	 if sesion[:user_id]
  	 	 @usuario_actual = Usuario.find sesion[:user_id]
  	 	 return true
  	 else
  		  redirect_to(:controller => 'sesiones', :action => 'login')
  		  return false	
  	 end
    end

    #def guardar_estado
  	 #if sesion[:user_id]
  		 
  		#  return false
  	 #else
  		#  return true
  	 #end
    #end

end
