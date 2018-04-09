Rails.application.routes.draw do
  resources :e1reporting_prods
  resources :e1produccions
  resources :e1planprods
  resources :e1articulos
  resources :e1evento_dispositivos
  resources :e1tipo_eventos
  resources :e1dispositivos
  resources :e1recursos
  resources :e1ubicacions
  resources :e1centros
  resources :e1empresas
  resources :wsubscribes
  resources :w_ins
  resources :aevento_dispositivos
  resources :atipo_eventos
  resources :adispositivos
  resources :arecursos
  resources :acentros
  resources :aempresas
  resources :event_ins
  resources :sensores
  resources :empresas
  get 'servicios/index'

  get 'servicios/contador'

  get 'servicios/grafico01'

  get 'servicios/reporte01'
  get 'servicios/reporte02'

  resources :particles
  get 'api/particle_in', to: 'api#particle_in2', :defaults => { :format => 'json' }
  get 'api/deleteAll', :defaults => { :format => 'json' }
  get 'api/show', :defaults => { :format => 'json' }

  get 'servicios/index'
  root 'servicios#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
