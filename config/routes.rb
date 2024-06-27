Rails.application.routes.draw do
  root 'pages#home'
  get 'menu', to: 'pages#menu'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'signup', to: 'users#signup'
  get 'login', to: 'users#login'
end
