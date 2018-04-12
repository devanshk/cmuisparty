Rails.application.routes.draw do
  get 'home/splash'
  resources :people
  resources :teams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Set the root url
  root :to => 'home#splash'
end
