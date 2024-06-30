Rails.application.routes.draw do
  root 'pages#home'
  get '/menu', to: 'pages#menu'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/signup', to: 'users#signup'
  get '/login', to: 'users#login'
  post '/login', to: 'users#create_session'  # Route POST pour /login

  # Ajoutez d'autres routes ici si nécessaire
end
