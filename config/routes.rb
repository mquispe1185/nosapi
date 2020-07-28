Rails.application.routes.draw do
  resources :contactos
  resources :estadocontactos
  resources :origenes
  resources :afiliados
  resources :localidades
  resources :departamentos
  resources :provincias
  resources :roles
  resources :usuarios
  mount_devise_token_auth_for 'Usuario', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #agregados
  get '/search_afiliado', to: 'afiliados#search'
  get '/stats_afiliados', to: 'afiliados#stats'
end
