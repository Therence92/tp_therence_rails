# class UsersController < ApplicationController
#   def signup
#   end

#   def login
#   end
# end

class UsersController < ApplicationController
  def login
    # Afficher le formulaire de connexion
  end

  def create_session
    # Logique pour créer une session utilisateur
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Connexion réussie!'
    else
      flash.now[:alert] = 'Email ou mot de passe invalide'
      render :login
    end
  end

  # Ajoutez d'autres actions si nécessaire
end
