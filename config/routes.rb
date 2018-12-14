Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'menu/about'
  get 'menu/services'
  get 'menu/contact'
  get 'home/main'
  root 'home#main'
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
