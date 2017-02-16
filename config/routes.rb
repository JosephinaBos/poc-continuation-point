Rails.application.routes.draw do

  get '/surfly_cookie_transfer', to: 'surfly_cookie_transfer#show', as: 'surfly_cookie_transfer'

  resources :users, only: [:update, :edit, :destroy]

  devise_for :users, controllers: {registrations: 'registrations'}

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
