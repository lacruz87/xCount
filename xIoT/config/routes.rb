Rails.application.routes.draw do
  resources :particles
  get 'api/particle_in', :defaults => { :format => 'json' }
  get 'api/show', :defaults => { :format => 'json' }

  get 'servicios/index'
  root 'servicios#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
